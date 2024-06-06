#check if dataset.zip exists
if [ -f dataset.zip ]; then
    echo "dataset.zip exists."
else
    echo "dataset.zip does not exist."
    echo "Downloading dataset.zip..."
    pip install gdown
    gdown 1Kdm1TzTIhDXM7TVDkdmCwbd7py5n5eqK
fi
