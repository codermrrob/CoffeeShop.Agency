# Agency Experiment using Agency Swarm

An agency to enable ad-hoc english queries against the data, plus some views which contain pre-calculated KPI values based on the dataset for queries about performance against those KPIs.

Because this is completely experimental it is currently implemented in a Jupyter notebook.

Check the [Agency Swarm](https://github.com/VRSEN/agency-swarm) repo for more information on the underlying technology and how to use it.


## The Data

Download from https://www.kaggle.com/code/ahmedessamsaber/coffee-shop-sales a single file containing coffee shop transactions. Import this into your database, the code currently expects an MS SQL Server db but this would be simple to change.

The table name to import into should be `CoffeeShopSales`

## The Views

Currently only 1 view, use the `sales_analysis.sql` script to add the view to your db.


## The Database

You will need to add a file `config.json` in the same directory which should contain your MS SQL db connection string like:

```
{
    "connection_string" : "mssql+pymssql://<user>:<password>@<yourdb-server-url>/<yourdb>"
}
```
