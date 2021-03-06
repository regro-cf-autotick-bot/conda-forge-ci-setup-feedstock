
:: 2 cores available on Appveyor workers: https://www.appveyor.com/docs/build-environment/#build-vm-configurations
:: CPU_COUNT is passed through conda build: https://github.com/conda/conda-build/pull/1149
set CPU_COUNT=2

set PYTHONUNBUFFERED=1

conda.exe config --set show_channel_urls true
conda.exe config --set auto_update_conda false
conda.exe config --set add_pip_as_python_dependency false

call setup_x64

:: Set the conda-build working directory to a smaller path
set "CONDA_BLD_PATH=C:\\bld\\"

conda.exe info
conda.exe config --show-sources
conda.exe list --show-channel-urls
