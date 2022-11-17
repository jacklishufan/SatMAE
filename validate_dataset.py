import os
import pandas as pd
import numpy as np 
from tqdm.cli import tqdm
root = '/home/jacklishufan/multiscale-mae/fmow_data'
df = pd.read_csv(os.path.join(root,'val_62classes.csv'))
img_arr = np.array(df['image_path'])
for s in tqdm(img_arr):
    if not os.path.exists(os.path.join(root,'fmow',s)):
        print(s)