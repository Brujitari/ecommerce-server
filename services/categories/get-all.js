const { getAllCategories } = require("../../queries/categories");
const errors = require("../../errors/commons")

module.exports = (db) => async (req, res, next) => {
    const queryResult = await getAllCategories(db)();

    if (!queryResult.ok) return next(errors[500]); 
    
    const arrayOfCategories = queryResult.data.map(category => category.name)

    res.status(200).json({
        success: true,
        data:arrayOfCategories
      });
}