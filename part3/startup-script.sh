# get the credentials file to the remote machine
# Add the Cloud SDK distribution URI as a package source
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

# Import the Google Cloud Platform public key
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -

# Update the package list and install the Cloud SDK
sudo apt-get update
sudo apt-get install -y python3 python3-pip git google-cloud-sdk
pip3 install --upgrade google-api-python-client
git clone https://kamalchaturvedi:kamal293%401993@github.com/cu-csci-4253-datacenter-fall-2019/lab5-programmable-cloud-kamalchaturvedi.git
cd /lab5-programmable-cloud-kamalchaturvedi/part3
python3 ./part3.py cudevops csci5253bucket
# setup py environment & run part3.py