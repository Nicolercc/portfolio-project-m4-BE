const express = require("express");
const router = express.Router();

const { getAllCategories, getQuoteByCategoryId } = require("../queries/Quotes");

router.get("/", async (req, res) => {
  const allCategories = await getAllCategories();
  res.json(allCategories);
});

router.get("/:id", async (req, res) => {
  const categoryId = req.params.id;
  const quotesByCategory = await getQuoteByCategoryId(categoryId);
  res.json(quotesByCategory);
});

module.exports = router;
