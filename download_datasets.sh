#!/bin/bash

# Base URL for the files
BASE_URL="https://data.snu.ac.kr/QSAR/data"

# Create the data directory if it doesn't exist
mkdir -p ./data

# List all the files to download
FILES=(
    "U_1851_1a2.tsv"
    "U_1851_2c19.tsv"
    "U_1851_2c9.tsv"
    "U_1851_2d6.tsv"
    "U_1851_3a4.tsv"
    "U_1915.tsv"
    "U_2358.tsv"
    "U_463213.tsv"
    "U_463215.tsv"
    "U_488912.tsv"
    "U_488915.tsv"
    "U_488917.tsv"
    "U_488918.tsv"
    "U_492992.tsv"
    "U_504607.tsv"
    "U_624504.tsv"
    "U_651739.tsv"
    "U_651744.tsv"
    "U_652065.tsv"
    "chem.fpsmi"
)

# Download each file
for file in "${FILES[@]}"; do
    echo "Downloading $file..."
    curl -o "./data/$file" "$BASE_URL/$file"
done

echo "Download complete."

