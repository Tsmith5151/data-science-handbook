# DevOps
_____

## Practical Guide on MLOps/DevOps

- [Made with ML Guide](https://madewithml.com/#mlops)

## Unit Testing 

- Below are some handy commands when working with `pytest`.
- [ZenML Reference](https://blog.zenml.io/level-up-your-testing/)
  
```bash
# make the test output verbose
pytest tests/ -v

# stop testing whenever you get to a test that fails
pytest tests/ -x

# run only a single test
pytest tests/test_base.py::test_initialization

# run only tests tagged with a particular word
pytest tests/ -m specialword

# print out all the output of tests to the console
pytest tests/ -s

# run all the tests, but run the last failures first
pytest tests/ --ff

# see which tests will be run with the given options and config
pytest tests/ —collect-only

# show local variables in tracebacks
pytest tests/ —showlocals
```