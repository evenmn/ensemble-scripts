# make repo dir and cloen repos
mkdir repos

git clone git@github.com:ecmwf/anemoi-utils.git repos/anemoi-utils
git clone git@github.com:ecmwf/anemoi-datasets.git repos/anemoi-datasets
git clone git@github.com:ecmwf/anemoi-core.git repos/anemoi-core
git clone git@github.com:ecmwf/anemoi-inference.git repos/anemoi-inference
git clone git@github.com:metno/bris-inference.git repos/bris-inference

# create python environment named "anemoi"
mkdir venvs
python3 -m venv venvs/anemoi
source venvs/anemoi/bin/activate

# install requirements
pip install repos/anemoi-utils
pip install repos/anemoi-datasets
pip install repos/anemoi-core/graphs
pip install repos/anemoi-core/models
pip install repos/anemoi-core/training
pip install repos/anemoi-inference
pip install repos/bris-inference

pip list
