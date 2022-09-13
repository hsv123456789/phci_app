const express = require('express');
const authRouter = express.Router();

authRouter.post('/api/signIn',function(req,res){
    const {email,password} = req.body;

});
module.exports = authRouter;