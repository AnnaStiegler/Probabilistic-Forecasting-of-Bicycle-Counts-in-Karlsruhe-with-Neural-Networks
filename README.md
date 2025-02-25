# Probabilistic-Forecasting-of-Bicycle-Counts-in-Karlsruhe-with-Neural-Networks

This repository contains the code for the Bachelors Thesis of Anna-Isabell Stiegler.
The thesis' aim is developing a neural network that predicts the mean and standard deviation of bicycle counts in Karlsruhe using different meteorological and date-related predictors.

## Thesis Abstract
- put abstract here - 

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


## How to Use the Project

The jupyter notebooks are sorted in chronological order of how they were created. The notebooks do the following things:

### Notebook Overview
(00) **Initial Data Exploration**: Contains an initial data exploration.  

(00) **test_weather_data.R**: There were some missing data in the dataset; here, I check whether these missing data points come from the meteorological data missing or not.

(01) **Feature_Engineering**: Here, different features are added, including features for public and school holidays, workdays, information about lockdowns because of COVID-19, and season.  

(02) **Plots**: Plots for the exploratory data analysis are created.  

(03) **Train_test_split**: Data is split into a test and a training set.  

(04) **Benchmarking**: Creating and evaluating the benchmark model.  

(05) **Preprocessing**: Preprocessing; splitting the training dataset further into a training and validation dataset, splitting into features and targets, standardizing the data.  

(06) **Initial_NN_Testing**: Initial testing of some NN architectures.  

(07) **Feature_Importance_Manual_Testing**: Doing some manual feature importance testing, i.e., checking how adding and dropping different features affects the CRPS.  

(08) **Permutation_Importance_and_SHAP_Testing**: Testing permutation importance and SHAP for different models.  

(09) **Testing_One-hot_Encoding_Seasons_and_Weekdays**: Testing one-hot encoding of the season and weekday features.  

(10) **Feature_Selection**: Final feature selection.  

(11) **Hyperparameter_Tuning_Testing**: Testing hyperparameter tuning and getting the `tune_nn` function to work.

(12) **Initial_GridSearch**: GridSearch with the finalized parameter grid of parameters that I want to tune and fewer layers per block.  

(13) **GridSearch_Evaluation_Testing**: Evaluating the first test GridSearch from notebook (11).  

(14) **Initial_GridSearch_Evaluation**: Evaluating the GridSearch from notebook (12).  

(15) **Final_GridSearch**: Doing one final GridSearch & evaluating it.  

(16) **Feature_Importance_Final_Model**: Looking at feature importance of the final model.  

(17) **Hyperparameter_Tuning_Testing**: Testing if a different parameter grid works—don’t know what’s up here, maybe delete???  

