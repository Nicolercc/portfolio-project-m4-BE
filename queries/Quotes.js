const db = require("../db/dbConfig");

//GET ALL Quotes
const getAllQuotes = async () => {
  try {
    const allQuotes = await db.any("SELECT * FROM quotes");
    return allQuotes;
  } catch (error) {
    return error;
  }
};

//GET ONE Quote
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

//CREATE Quote
const createQuote = async (quote) => {
  try {
    const {
      quote_text,
      author,
      category,
      date_added,
      rating,
      is_featured,
      is_favorite,
    } = quote;

    const create = await db.any(
      "INSERT INTO quotes (quote_text, author, category, date_added,rating, is_featured, is_favorite) VALUES ($1, $2, $3, $4, $5, $6, $7) RETURNING *",
      [
        quote_text,
        author,
        category,
        date_added,
        rating,
        is_featured,
        is_favorite,
      ]
    );

    return create[0];
  } catch (e) {
    return e;
  }
};

const deleteQuote = async (id) => {
  try {
    const deletedQuote = await db.any(
      `DELETE FROM quotes WHERE id = $1 RETURNING *`,
      id
    );
    return deletedQuote;
  } catch (e) {
    return e;
  }
};

//UPDATE Quote
const updateQuote = async (Quote, id) => {
  try {
    const {
      quote_text,
      author,
      category,
      date_added,
      rating,
      is_favorite,
      is_featured,
    } = Quote;

    const updateFields = {
      quote_text,
      author,
      category,
      date_added,
      rating,
      is_favorite,
      is_featured,
    };

    let query = "UPDATE quotes SET ";
    let values = [];
    let valueIndex = 1;

    for (const field in updateFields) {
      const value = updateFields[field];

      if (value !== null && value !== undefined) {
        query += `${field} = $${valueIndex}, `;
        values.push(value);
        valueIndex++;
      }
    }
    query = query.slice(0, -2);
    query += ` WHERE id = $${valueIndex++} RETURNING *`;
    console.log(query);
    const updatedQuote = await db.any(query, [...values, id]);

    return updatedQuote;
  } catch (e) {
    return e;
  }
};

//GET ALL Categories
const getAllCategories = async () => {
  try {
    const allCategories = await db.any("SELECT * FROM categories");
    return allCategories;
  } catch (e) {
    return e;
  }
};

//GET ONE Category
const getQuoteByCategoryId = async (categoryId) => {
  try {
    const quotesByCategory = await db.any(
      "SELECT r.*,c.name FROM quotes r JOIN categories c ON r.category_id = c.id WHERE c.id = $1",
      categoryId
    );
    return quotesByCategory;
  } catch (e) {
    return e;
  }
};

module.exports = {
  getAllQuotes,
  getSingleQuote,
  createQuote,
  deleteQuote,
  updateQuote,
  getAllCategories,
  getQuoteByCategoryId,
};
