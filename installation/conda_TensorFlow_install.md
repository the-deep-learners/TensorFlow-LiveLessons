# Install TensorFlow a Conda Virtual Environment

These steps are for users who have already installed the [Anaconda](https://www.continuum.io/downloads) Python 3 distribution, but other such distributions (e.g., [WinPython](https://winpython.github.io/), [Canopy](https://store.enthought.com/downloads/)) should work as well.

1. Create a conda virtual environment: `C:\> conda create -n tf python=3.5`
2. Activate the new environment: `C:\> activate tf`. Your prompt should now change to: `(tf) C:\>`
3. Run `(tf) C:\> pip install --ignore-installed --upgrade https://storage.googleapis.com/tensorflow/windows/cpu/tensorflow-1.2.1-cp35-cp35m-win_amd64.whl`.
