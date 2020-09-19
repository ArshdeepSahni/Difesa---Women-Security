
const firebase = require('firebase/app');
require('firebase/auth');


module.exports = (req, res, next) => {
    firebase.auth().onAuthStateChanged((user) => {
    
        if (!user) {
            return res.render('signin');
        }
    });
    next();
};
