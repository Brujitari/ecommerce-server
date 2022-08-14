const { selectAllCategories } = require("./queries");
const { queryCatcher } = require("../utils")

// Querie para coger un único producto: Me viene bien para luego hacer el Update de ese producto

const getAllCategories = (db) => async() =>{
    
    return await queryCatcher(
        db.query,
        "getOneProduct"
    )(selectAllCategories())
};

module.exports = {
    getAllCategories,
}