from PIL import Image
import os

img = Image.open("assets/images/codas-hep/logos/CLAS12_spectrometer.png")

# Reduce to 80% of the current size
w, h = img.size
img = img.resize((int(w*0.8), int(h*0.8)), Image.LANCZOS)

img.save(
    "assets/images/codas-hep/logos/CLAS12_spectrometer.png",
    optimize=True,
    compress_level=9,
)

print(os.path.getsize("assets/images/codas-hep/logos/CLAS12_spectrometer.png")/1024, "KB")

