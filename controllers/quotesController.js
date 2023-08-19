const express = require("express");
const router = express.Router();

const {
  getAllQuotes,
  getSingleQuote,
  createQuote,
  deleteQuote,
  updateQuote,
} = require("../queries/Quotes");

const categoriesController = require("./categoriesController");
router.use("/categories", categoriesController);

//GET SINGLE
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

//GET ALL
router.get("/", async (req, res) => {
  const allQuotes = await getAllQuotes();
  res.json(allQuotes);
});

//CREATE check
router.post("/", async (req, res) => {
  const newQuote = req.body;
  const insertQuote = await createQuote(newQuote);

  if (insertQuote.length === 0) {
    return res.status(422).json({
      status: false,
      message: "you cannot create an empty recipe",
    });
  } else {
    return res.json(insertQuote);
  }
});

//DELETE
router.delete("/:id", async (req, res) => {
  const id = req.params.id;
  const deletedQuote = await deleteQuote(id);

  if (deletedQuote.length === 0) {
    res.status(404).json({ message: "No data found!", error: true });
  } else {
    res.json(deletedQuote[0]);
  }
});

//UPDATE
router.put("/:id", async (req, res) => {
  // const id = req.params.id
  const updatedQuote = await updateQuote(req.body, req.params.id);
  console.log(updatedQuote);

  if (updatedQuote.length === 0) {
    res.status(404).json({ message: "No data found!", error: true });
  } else {
    res.json(updatedQuote[0]);
  }
});

module.exports = router;
