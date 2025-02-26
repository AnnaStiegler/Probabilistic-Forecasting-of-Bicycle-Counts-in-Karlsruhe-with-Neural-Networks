# Probabilistic Forecasting of Bicycle Counts in Karlsruhe with Neural Networks

This repository contains the code for the Bachelors Thesis of Anna-Isabell Stiegler.
The thesis' aim is developing a neural network that predicts the mean and standard deviation of bicycle counts in Karlsruhe using different meteorological and date-related predictors.

## Thesis Abstract
- put abstract here - 

## How to Use the Project

The jupyter notebooks are sorted in chronological order of how they were created. 

### Most important Notebooks

The most important notebooks are notebooks 1-5, 10 and 13-16


### Notebook Overview

The notebooks do the following things:

| **Notebook**                          | **Description**                                                                                                                                                        |
|---------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| (00) **Initial Data Exploration**      | Taking a first look at the dataset—checking its structure, spotting potential issues and visualizing key trends.                                                     |
| (00) **test_weather_data.R**           | Investigating missing values to determine if they stem from gaps in the meteorological data.                                                                          |
| (01) **Feature_Engineering**           | Creating new features, including indicators for public and school holidays, workdays, COVID-19 lockdowns and seasonal effects, to enhance model performance.          |
| (02) **Plots**                         | Generating visualizations for the exploratory data analysis.                                                                                                           |
| (03) **Train_test_split**              | Splitting the dataset into training and test sets.                                                                                                                      |
| (04) **Benchmarking**                  | Establishing a baseline benchmark model to compare against the final NN model and evaluating it.                                                                       |
| (05) **Preprocessing**                 | Preparing the data—further splitting the training set (into training and validation set), selecting relevant features and standardizing inputs for consistency.         |
| (06) **Initial_NN_Testing**            | Running early tests on different neural network architectures to see what works best.                                                                                   |
| (07) **Feature_Importance_Manual_Testing** | Experimenting with adding and removing features to see how they impact model performance (evaluated using CRPS).                                                         |
| (08) **Permutation_Importance_and_SHAP_Testing** | Looking at feature importance of different models through permutation importance and SHAP.                                                                              |
| (09) **Testing_One-hot_Encoding_Seasons_and_Weekdays** | Evaluating whether one-hot encoding variables like season and weekday improves model accuracy.                                                               |
| (10) **Feature_Selection**             | Finalizing the feature selection. The final list of features is: col_keep = ['temperature', 'precipitation', 'public_holiday_indicator', 'is_workday', 'day_of_week', 'spring', 'summer','autumn', 'winter', 'windspeed', 'sun', 'school_holiday_indicator'].                                                                                                                            |
| (11) **Hyperparameter_Tuning_Testing** | Running initial tests with hyperparameter tuning and ensuring the `tune_nn` function works correctly.                                                                  |
| (12) **GridSearch_Evaluation_Testing** | Reviewing results from the first GridSearch experiment (*Notebook 11*).                                                                                               |
| (13) **Initial_GridSearch**            | GridSearch with the finalized parameter grid of parameters that I want to tune and fewer layers per block.                                                              |
| (14) **Initial_GridSearch_Evaluation** | Evaluating the GridSearch results from *Notebook 13*.                                                                                                                  |
| (15) **Final_GridSearch**              | Running a final GridSearch to find the optimal number of blocks and evaluating this final model resulting from the GridSearch.                                                                         |
| (16) **Feature_Importance_Final_Model**| Investigating feature importance of the final trained model.          |



## List of Available Predictors

| **Predictor**              | **Description** |
|--------------------------------------|----------------|
| bike_count                           | The number of bicycles passing by the bicycle counter located on Erbprinzenstrasse in Karlsruhe each day. |
| date                                 | The date of the observation. |
| temperature                          | Air temperature in degrees Celsius (°C). |
| humidity                             | Relative humidity in percentage (%). |
| windspeed                            | Wind speed in meters per second (m/s). |
| windspeed_max                        | Maximum wind speed in meters per second (m/s). |
| wind_direction                       | Wind direction in degrees (°). |
| visibility                           | Visibility in meters (m). |
| precipitation                        | Precipitation in millimeters (mm). |
| precip_indic                         | Indicator for precipitation (0 = no precipitation, 1 = precipitation). |
| sun                                  | Hourly sunshine duration in minutes (min). |
| school_holiday                       | School holidays in Baden-Wuerttemberg (String). |
| school_holiday_indicator             | Indicator for school holidays (1 = school holiday, 0 = not a school holiday). |
| public_holiday                       | Public holidays in Baden-Wuerttemberg (String). |
| public_holiday_indicator             | Indicator for public holidays (1 = public holiday, 0 = not a public holiday). |
| holiday_indicator                    | Indicator for any holiday (1 = school and/or public holiday, 0 = no holiday). |
| is_workday                           | Indicator for workdays (1 = workday, 0 = weekend or public holiday). |
| season                               | Season of the year (0 = Spring, 1 = Summer, 2 = Autumn, 3 = Winter). |
| day_of_week                          | Day of the week (0 = Monday, 6 = Sunday, etc.). |



