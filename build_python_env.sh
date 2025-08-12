# make repo dir
mkdir repos
cd repos

# clone repos
git clone git@github.com:ecmwf/anemoi-utils.git
git clone git@github.com:ecmwf/anemoi-datasets.git
git clone git@github.com:ecmwf/anemoi-core.git
git clone git@github.com:ecmwf/anemoi-inference.git
git clone git@github.com:metno/bris-inference.git

# create python environment named "anemoi"
cd ..
mkdir venvs
python3 -m venv venvs/anemoi
source venvs/bris/bin/activate

# install requirements
pip install repos/anemoi-utils
pip install repos/anemoi-datasets
pip install repos/anemoi-core/graphs
pip install repos/anemoi-core/models
pip install repos/anemoi-core/training
pip install repos/anemoi-inference
pip install repos/bris-inference

pip list
