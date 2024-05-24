# Agency Experiment using Agency Swarm

An agency to enable ad-hoc english queries against the data, plus some views which contain pre-calculated KPI values based on the dataset for queries about performance against those KPIs.

## The Data

Download from https://www.kaggle.com/code/ahmedessamsaber/coffee-shop-sales


You will need to add a file `config.json` in the same directory which should contain your MS SQL db connection string like:

```
{
    "connection_string" : "mssql+pymssql://<user>:<password>@syndeodev.database.windows.net/syndeodev"
}
```
