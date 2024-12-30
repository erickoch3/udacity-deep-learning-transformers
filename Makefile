# Define the Conda environment path
ENV_PATH := ./.conda

# Command to install dependencies
install:
	conda init && \
	conda activate ./.conda && \
	conda install ipykernel -p $(ENV_PATH)
	conda install pytorch -c pytorch -p $(ENV_PATH)
	conda install --yes --file requirements.txt -p $(ENV_PATH)
	pip install -r requirements.txt
