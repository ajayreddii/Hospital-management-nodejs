var mongoose = require ('mongoose');


mongoose.Promise = global.Promise;

//change the database with yours
mongoose.connect("mongodb+srv://ajayreddymarolix:A%40123456789@cluster0.r070bjl.mongodb.net/?retryWrites=true&w=majority");

module.exports = {mongoose};
