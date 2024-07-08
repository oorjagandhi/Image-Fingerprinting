# Image-Fingerprinting
## Overview

This project provides a set of tools for generating and comparing image fingerprints using various algorithms. The purpose is to enable efficient image comparison and retrieval through fingerprinting techniques.

## Features

- **Average Hashing (AvgHash.m)**: Computes the average hash of an image.
- **Difference Hashing (DiffHash.m)**: Computes the difference hash of an image.
- **Display Fingerprints (DispFP.m)**: Displays the computed fingerprints.
- **Fingerprint Collection (FingerprintCollection.m)**: Manages a collection of image fingerprints.
- **Greyscale Conversion (GreyscaleLuma.m)**: Converts images to greyscale using the luma method.
- **Hamming Distance Calculation (HammingDistance.m)**: Computes the Hamming distance between two fingerprints.
- **Image Fingerprinting (ImageFingerprint.m)**: Generates fingerprints for images.
- **Rank Similarity (RankSimilarity.m)**: Ranks the similarity between images based on their fingerprints.
- **Image Resizing (ResizeBox.m, ResizeNearest.m)**: Resizes images using different algorithms.

## Installation

To use these tools, clone the repository and add the provided MATLAB functions to your MATLAB path.

```sh
git clone https://github.com/yourusername/your-repo-name.git
cd your-repo-name
addpath(genpath(pwd))
```
## Usage

Below are examples of how to use each of the provided functions:
### Average Hashing
```sh
img = imread('path/to/your/image.jpg');
avgHash = AvgHash(img);
disp(avgHash);
```

### Difference Hashing
```sh
img = imread('path/to/your/image.jpg');
diffHash = DiffHash(img);
disp(diffHash);
```
### Display Fingerprints
```sh
img = imread('path/to/your/image.jpg');
fingerprint = ImageFingerprint(img);
DispFP(fingerprint);
```

### Fingerprint Collection
```sh
collection = FingerprintCollection();
collection = addFingerprint(collection, 'image1.jpg', imgFingerprint1);
collection = addFingerprint(collection, 'image2.jpg', imgFingerprint2);
```

### Greyscale Conversion
```sh
img = imread('path/to/your/image.jpg');
greyImg = GreyscaleLuma(img);
imshow(greyImg);
```
			

### Hamming Distance Calculation
```sh
distance = HammingDistance(fingerprint1, fingerprint2);
disp(distance);
```

### Image Fingerprinting
```sh
img = imread('path/to/your/image.jpg');
fingerprint = ImageFingerprint(img);
disp(fingerprint);
```

### Rank Similarity
```sh
similarity = RankSimilarity(fingerprint1, fingerprint2);
disp(similarity);
```

### Image Resizing
```sh
resizedImg = ResizeBox(img, [100, 100]);
imshow(resizedImg);

resizedImg = ResizeNearest(img, [100, 100]);
imshow(resizedImg);
```

## Contact

If you have any questions or suggestions, feel free to open an issue or contact me directly at oorjagandhi@gmail.com
