const db = require("../db/dbConfig");

const getAllQuotes = async () => {
  try {
    const allQuotes = await db.any("SELECT * FROM quotes");
    return allQuotes;
  } catch (error) {
    return error;
  }
};

const getSingleQuote = async (id) => {
  try {
    const singleQuote = await db.any("SELECT * FROM quotes WHERE id = $1", [
      id,
    ]);
    return singleQuote;
  } catch (e) {
    return e;
  }
};

module.exports = {
  getAllQuotes,
  getSingleQuote,
};
