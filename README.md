# Time Series Forecasting of Global Wildfire Trends

An academic team project comparing statistical and machine-learning approaches to forecasting global wildfire activity and surface temperatures.

The analysis was completed at ISEG in 2025 by Zoltan Jelovich, Jakub Kolpa, Nicolas Maute, Jonas Boese, and Grigory Antonnikov.

## Project overview

The project combines exploratory time-series analysis, model diagnostics, forecasting, and model evaluation. It studies weekly global wildfire activity alongside longer monthly climate series to understand recurring seasonal patterns and compare forecasting approaches under different data conditions.

The workflow covers:

- time-series visualization and decomposition;
- trend, seasonality, stationarity, and residual diagnostics;
- naïve and seasonal-naïve benchmarks;
- exponential smoothing (ETS);
- seasonal ARIMA (SARIMA);
- Prophet;
- neural-network autoregression (NNAR);
- holdout evaluation and rolling-origin time-series cross-validation.

## Data

The analysis downloads public datasets directly from [Our World in Data](https://ourworldindata.org/):

- weekly area burned by wildfires;
- weekly share of land area burned;
- monthly average surface temperature;
- monthly global temperature anomalies.

Because the source files are fetched when the analysis runs, results may vary slightly if the upstream datasets are revised.

## Main findings

- ETS produced the strongest holdout forecast for the analyzed wildfire-area series.
- Seasonal ARIMA was more consistent across rolling-origin cross-validation windows.
- Prophet performed best for the analyzed global surface-temperature series, with ETS and seasonal ARIMA close behind.
- NNAR was less stable on these datasets than the leading statistical models.

These findings apply to the datasets, preprocessing choices, and evaluation periods used in this academic study; they are not production forecasts.

## Repository structure

```text
.
├── analysis/
│   └── wildfire_forecasting.Rmd
├── assets/
│   └── logo.png
├── report/
│   └── wildfire_forecasting_report.pdf
├── install_packages.R
└── README.md
```

## Reproducing the analysis

The repository includes the complete R Markdown source and a pre-rendered report.

1. Install R, Pandoc, and a LaTeX distribution.
2. From the repository root, install the required R packages:

   ```bash
   Rscript install_packages.R
   ```

3. Render the report:

   ```bash
   Rscript -e 'rmarkdown::render("analysis/wildfire_forecasting.Rmd")'
   ```

The `seasonal` package uses the X-13ARIMA-SEATS binary. Its companion package is included in the installation script.

## Tools

R, tidyverse, fable, forecast, Prophet, tsibble, feasts, seasonal, ggplot2, and R Markdown.

## Project status

Completed academic team project. The PDF in [`report/`](report/wildfire_forecasting_report.pdf) is the submitted report; the R Markdown file in [`analysis/`](analysis/wildfire_forecasting.Rmd) contains the full analysis.
