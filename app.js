const express = require("express");
const cors = require("cors");
const morgan = require("morgan");

const quotesController = require("./controllers/quotesController");
const categoriesController = require("./controllers/categoriesController");

const app = express();
app.use(cors());
app.use(express.json());
app.use(morgan("dev"));

app.use("/quotes", quotesController);
app.use("/categories", categoriesController);

app.get("/", (req, res) => {
  res.send("Welcome to my quotes app!");
});

app.get("*", (req, res) => {
  res.status(404).send("Page not found");
});

module.exports = app;
