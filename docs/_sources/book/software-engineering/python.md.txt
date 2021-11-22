# Python Basics
_____

### Dictionaries

- [Reference](https://www.geeksforgeeks.org/python-dictionary/)

### Sets

- [Reference](https://www.geeksforgeeks.org/python-set/)

### Lists

- [Reference](https://www.geeksforgeeks.org/python-list/)

### Multi-Processing 
- Example below on using multi-processing in python for feature engineering
  (i.e. creating features from lagged windows).
- [Reference1](https://docs.python.org/3/library/multiprocessing.html)
- [Reference2](https://www.geeksforgeeks.org/python-multiprocessing/)

**Terms**
- `Pool`: A process pool object which controls a pool of worker processes to
  which jobs can be submitted. 
- `map`: A parallel equivalent of the map(). 
- `join`: If the optional argument timeout is None (the default), the method
  blocks until the process whose join() method is called terminates. If timeout
  is a positive number, it blocks at most timeout seconds.   
- `close`: Indicate that no more data will be put on this queue by the current
  process. 

```python
import pandas as pd
from multiprocessing import Pool
pool = Pool(processes=4)
out = pool.map(prep_func, lags=[1,2,3])
df = pd.concat(out,axis=1).reset_index(drop=False)
pool.close(), pool.join()
```