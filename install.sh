apt install bzip2
MINICONDA_INSTALLER_SCRIPT=Miniconda3-4.5.4-Linux-x86_64.sh
MINICONDA_PREFIX=/usr/local
wget https://repo.continuum.io/miniconda/$MINICONDA_INSTALLER_SCRIPT
chmod +x $MINICONDA_INSTALLER_SCRIPT
./$MINICONDA_INSTALLER_SCRIPT -b -f -p $MINICONDA_PREFIX
conda install --channel defaults conda python=3.6 --yes
conda update --channel defaults --all --yes
conda env create -n qiime2-2020.8 --file qiime2-2020.8-py36-linux-conda.yml
echo "conda init bash" | conda-shell
