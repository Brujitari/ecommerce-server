const { getFullUser } = require("../../queries/auth");
const errors = require("../../errors/commons");
const { query } = require("express");

module.exports = (db) => async (_, res, next) => {
  const { email } = res.locals;

  const queryResult = await getFullUser(db)({ email });

  if (!queryResult.ok) return next(errors[400]);

  const { first_name, role, address } = queryResult.data;

  res.status(200).json({
    success: true,
    data: {
      first_name,
      email,
      address,
      role,
    },
  });
};
