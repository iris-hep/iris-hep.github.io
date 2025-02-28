const ERROR_ELEMENT_ID = 'error-message';

function displayErrorMessage(message) {
    const errorElement = document.getElementById(ERROR_ELEMENT_ID);
    if (errorElement) {
        errorElement.textContent = message;
        errorElement.style.display = 'block';
    }
}

async function getLiveData() {
    try {
        const response = await fetch("../../fellows_search.json", { mode: 'cors' });
        if (!response.ok) throw new Error(`HTTP error! status: ${response.status}`);
        return await response.json();
    } catch (error) {
        console.error("Error fetching or processing data:", error);
        displayErrorMessage("Failed to load data. Please try again later.");
        return null;
    }
}

async function main() {
    const data = await getLiveData();
    if (!data) return;

    const input = document.querySelector('input[type=search]');
    const container = document.createElement('div');
    container.id = 'search-results';
    input.after(container);

    const miniSearch = new MiniSearch({
        fields: ['name', 'projects'],
        extractField: (doc, field) => field === 'projects' ? doc.projects.map(p => p.name).join(' ') : doc[field]
    });
    miniSearch.addAll(data);

    input.addEventListener('input', event => {
        const query = event.target.value;
        const results = miniSearch.search(query);
        const findings = results.map(result => {
            const entry = data.find(e => e.id === result.id);
            return {
                id: entry.id,
                name: entry.name,
                url: entry.url,
                projects: entry.projects
            };
        });

        const list = document.createElement('ul');
        findings.forEach(finding => {
            const item = document.createElement('li');
            const link = document.createElement('a');
            const dl = document.createElement('dl');
            finding.projects.forEach(project => {
                const projectNameDt = document.createElement('dt');
                projectNameDt.appendChild(document.createTextNode("Project:"));
                const projectNameDd = document.createElement('dd');
                projectNameDd.appendChild(document.createTextNode(project.name));
                const projectMentorDt = document.createElement('dt');
                projectMentorDt.appendChild(document.createTextNode("Mentor(s):"));
                const projectMentorDd = document.createElement('dd');
                projectMentorDd.appendChild(document.createTextNode(project.mentors.join(', ')));
                dl.appendChild(projectNameDt);
                dl.appendChild(projectNameDd);
                dl.appendChild(projectMentorDt);
                dl.appendChild(projectMentorDd);
            });

            link.setAttribute('href', finding.url);
            link.appendChild(document.createTextNode(finding.name));
            item.appendChild(link);
            item.appendChild(dl);
            list.append(item);
        });

        container.replaceChildren(list);
    });
}

main().catch(error => {
    console.error('Error loading data:', error);
    displayErrorMessage('Failed to load data. Please try again later.');
});