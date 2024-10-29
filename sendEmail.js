const nodemailer = require('nodemailer');
require('dotenv').config();


const transporter = nodemailer.createTransport({
    host: 'smtp.gmail.com',
    port: 465,
    secure: true,
    auth: {
        user: 'alfridawiali@gmail.com',
        pass: process.env.aliPassword
    }
});

async function sendEmail(data)
{
    try
    {
        const mailOptions = {
            from: 'alfridawiali@gmail.com',
            to: 'ali.alfridawi@ifotriss.com',
            subject: 'New Ticket Created',
            text:  `A new ticket has been created by ${data.name} about ${data.description}, and the priority is ${data.priority}`
        };
        const info = await transporter.sendMail(mailOptions);
        console.log('Email sent: ' + info.response);
    }
    catch(err)
    {
        console.error('Error sending email:',err);
    }
}

module.exports = {sendEmail};