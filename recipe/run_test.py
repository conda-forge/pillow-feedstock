import io
import os
from PIL import Image


# Load test image
fname = os.path.join('test_data', '256x256_Single.png')
image = Image.open(fname)

# Test resize of image
image.resize((300, 500))
