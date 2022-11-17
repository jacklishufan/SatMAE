## Additional Preparations ##

1. Follow the file preparation guide
```
<PATH_TO_DATASET_ROOT_FOLDER>
--- train_62classes.csv
--- val_62classes.csv
--- fmow
------- train
---------- airport
---------- ...
------- val
---------- airport
---------- ...
```

Where the csv files are in the split folder of codebase. DO NOT use the one provided in main readme as they contain certain absolute path on cluster


2. see `eval.sh` for example launch script.