# create
conda update -n base -c defaults conda;
conda create --name CrossKorean-22.10 python=3.10 -y; conda activate CrossKorean-22.10;

# install
pip install --upgrade pip packaging numpy matplotlib scipy pandas scikit-learn openpyxl tqdm tabulate SQLAlchemy pymongo;
pip install --upgrade jupyter jupyterlab jupyter_nbextensions_configurator ipywidgets ipynbname jinja2;
pip install --upgrade torch torchvision torchaudio;  # for chris137, qa234
#pip install --upgrade torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu116;
#pip install --upgrade torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu113;  # for qa77
#pip install --upgrade torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu111;
pip install "lightning==2022.10.20" "protobuf<3.20"
pip install --upgrade huggingface-hub flatbuffers click nose coverage typing-extensions;
pip install --upgrade tokenizers fairscale deepspeed;
pip install --upgrade flax;

# clone & modify
rm -rf lib && mkdir lib && cd lib
git clone git@github.com:bcj/AttrDict.git -b v2.0.0 attrdict && rm -rf attrdict/.*
git clone git@github.com:huggingface/datasets.git -b 2.6.1 datasets && rm -rf datasets/.*
git clone git@github.com:huggingface/evaluate.git -b v0.3.0 evaluate && rm -rf evaluate/.*
git clone git@github.com:huggingface/transformers.git -b v4.23.1 transformers && rm -rf transformers/.*
sed -i "s/from collections import/from collections.abc import/" attrdict/attrdict/*.py

# install
pip install -e attrdict
pip install -e datasets
pip install -e evaluate
pip install -e transformers
cd ..

