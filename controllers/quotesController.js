const express = require("express");
const router = express.Router();

const { getAllQuotes, getSingleQuote } = require("../queries/Quotes");

router.get("/:id", async (req, res) => {
  const id = req.params.id;
  const quote = await getSingleQuote(id);

  if (quote.length) {
    res.json(quote[0]);
  } else {
    res.status(404).json({
      status: false,
      message: "Quote does not exist",
    });
  }
});

router.use("/", async (req, res) => {
  const allQuotes = await getAllQuotes();
  res.json(allQuotes);
});

module.exports = router;
