import fsspec

from PIL import Image


# Test JPEG2k
with fsspec.open("https://www.fnordware.com/j2k/relax.jp2") as f:
  image = Image.open(f)
  image.load()

