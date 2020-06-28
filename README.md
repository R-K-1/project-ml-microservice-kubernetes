[![R-K-1](https://circleci.com/gh/R-K-1/project-ml-microservice-kubernetes.svg?style=svg)](<LINK>)

## House Price Predictor Project

This project demonstrates the power of the Docker-Kubernetes combination. It implements the microservice API architecture to interact with a pre-trained machine learning model predicting the price of houses in the Boston, MA market.

The `sklearn` model has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing).

This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

## TL;DR

To run the project locally:

* install Docker, Kubernetes and Hadolint
* clone the project
* navigate to the root of the project and run `make setup`
* to test the Flask API standalone run `python3 app.py` in a terminal window and `./make_prediction.sh` in another one
* To run the microservice API within a docker container execute `./run_docker.sh` in a terminal window; to test it, run `./make_prediction.sh` in another one.
* To run the docker container within Kubernetes execute `./run_kubernetes.sh` in a terminatl window; to test it run `./make_predictions` in another one.

## What You're Getting
```bash
├── CONTRIBUTING.md
├── README.md - This file
├── Dockerfile # Settings for the Docker container
├── Makefile # Environment settings and lint test
├── make_predition-sh # test API call
├── requirements.txt # Python dependencies to be installed in each container
├── run_docker.sh # script to deploy the API within a standalone docker container
├── run_kubernetes.sh # script to deploy the API within a Docker container in a kubernetes orchestrator
├── upload_docker.sh # script to puth an image of the Docker container to Docker Hub
├── .circleci
│   ├── config.yml # Settings for circleci continuous integration workflow
└── output_txt_files
    ├── docker_out.txt # log statement printed to terminal from Flask route when running in standalone Docker
    ├── kubernetes_out.txt # log statement printed to terminal from Kubernetes orchestrator
└── model_data
    ├── boston_housing_prediction.joblib
    ├── housing.csv
```

## Contributing

Do not hesitate to submit a pull request.

For details, check out [CONTRIBUTING.md](CONTRIBUTING.md).
