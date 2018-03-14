:: ecoReleve-Sensor installation script
:: conda AND Node with NPM

CALL conda install conda-build --yes
CALL conda env create -f environment.yml

CALL activate erd_be

CALL python setup.py develop

cd ../Front

CALL npm install
CALL bower install
CALL grunt dev