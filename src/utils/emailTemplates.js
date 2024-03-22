module.exports = {
    otpHTML: (recipient, otp) => {
        const characters = otp.split('');
        let OTPCharactersHtml = '';

        for(let i = 0; i < characters.length; i++) {
            const character = characters[i];

            OTPCharactersHtml += `
                <td>
                    <p class="otp">${character}</p>
                </td>
            `
        }

        const emailTemplate = `
            <html lang="en">
            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <link rel="icon" type="image/png" sizes="16x16" href="">
                <link rel="preconnect" href="https://fonts.googleapis.com">
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                <link href="https://fonts.googleapis.com/css2?family=Montserrat&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
                <title>Email Template</title>
                <style>
                    body {
                        margin:0; 
                        padding:0; 
                        font-family: 'Poppins', sans-serif; 
                        display: flex; 
                        justify-content: 
                        center; align-items: 
                        center; 
                        height: 100vh;
                    }
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    td {
                        border: 0 solid #ddd;
                        padding: 8px;
                    }
                    header, footer {
                        text-align: center;
                    }
            
                    .otp {
                        font-weight: 400; 
                        font-size: 34px; 
                        line-height: 51px; 
                        letter-spacing: 0.25%; 
                        color: #00B780; 
                        box-shadow: -3px -3px 7px 0 rgba(144, 238, 216, 0.8); 
                        border-radius: 10px; 
                        background-color: white; 
                        text-align: center; 
                        vertical-align: middle;  
                        width: 50px; 
                        height: 50px;
                    }
            
                    @media print {
                        body {
                            zoom: 0.67;
                        }
                    }
                </style>
            </head>
            <body style="">
                <table style="width: 500px; margin-left: auto; margin-right: auto;">
                    <tr>
                        <td colspan="3" style="text-align: center; padding-top: 100px;">
                            <span style="font-size: 22px; display: inline-block; font-weight: 900; border: 1px solid grey; padding: 2px; border-radius:5px; width: 70px; margin-top: 10px;">
                                IEE
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="text-align: center; padding-top: 30px; letter-spacing: 1px;">
                            <h3 style="font-weight: 600; font-size: 20px; font-style: normal; line-height: 30px;">
                                Verify your email address
                            </h3>
                            <p style="font-weight: 400; font-size: 12px; font-style: normal; padding-top: 30px; line-height: 18px;">
                                You’ve entered <b>${recipient}</b> as the email address for your account. Please verify email address by inputting the OTP below
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="text-align: center; padding-top: 40px;">
                            <table>
                                <tr>${OTPCharactersHtml}</tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="text-align: center; padding-top: 45px; line-height: 18px; letter-spacing: 1px;">
                            <p style="font-weight: 400; font-size: 10px; font-style: normal; margin-bottom: 10px !important; text-transform: uppercase;">
                                FOR MORE INFORMATION, CLICK BELOW
                            </p>
                            <a href="https://www.uscis.gov/" style="font-weight: 400; font-size: 12px; font-style: normal; text-decoration: none;">
                                https://www.uscis.gov/
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="text-align: center; padding-top: 70px; line-height: 30px; letter-spacing: 0.15px;">
                            <h3 style="font-weight: 600; font-size: 20px; font-style: normal; margin-bottom: 5px !important; text-decoration: none;">
                                Need Help?
                            </h3>
                            <h5 style="font-weight: 400; font-size: 12px; font-style: normal; margin-top: 0 !important; margin-bottom: 5px !important; text-decoration: none;">
                                Please send feedback or bug info to
                            </h5>
                            <a href="mailto:info@engis.en.gov.ng" style="font-weight: 400; font-size: 12px; font-style: normal; text-decoration: none;">
                                info@uscis.gov
                            </a>
                        </td>
                    </tr>
                </table>
            </body>
            </html>
        `;

        return emailTemplate;
    },
    recoveryHTML: (recipient, salt) => {
        const emailTemplate = `
            <html lang="en">
            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <link rel="icon" type="image/png" sizes="16x16" href="http://3.211.15.234:6001/assets/images/engis-logo1.png">
                <link rel="preconnect" href="https://fonts.googleapis.com">
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                <link href="https://fonts.googleapis.com/css2?family=Montserrat&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
                <title>Recover Email</title>
                <style>
                    body {
                        margin:0; 
                        padding:0; 
                        font-family: 'Poppins', sans-serif; 
                        display: flex; 
                        justify-content: 
                        center; align-items: 
                        center; 
                        height: 100vh;
                    }
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    td {
                        border: 0 solid #ddd;
                        padding: 8px;
                    }
                    header, footer {
                        text-align: center;
                    }
            
                    .otp {
                        font-weight: 400; 
                        font-size: 34px; 
                        line-height: 51px; 
                        letter-spacing: 0.25%; 
                        color: #00B780; 
                        box-shadow: -3px -3px 7px 0 rgba(144, 238, 216, 0.8); 
                        border-radius: 10px; 
                        background-color: white; 
                        text-align: center; 
                        vertical-align: middle;  
                        width: 50px; 
                        height: 50px;
                    }
            
                    @media print {
                        body {
                            zoom: 0.67;
                        }
                    }
                </style>
            </head>
            <body style="">
                <table style="width: 500px; margin-left: auto; margin-right: auto;">
                    <tr>
                        <td colspan="3" style="text-align: center; padding-top: 100px;">
                            <span style="font-size: 22px; display: inline-block; font-weight: 900; border: 1px solid grey; padding: 2px; border-radius:5px; width: 70px; margin-top: 10px;">
                                IEE
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="text-align: center; padding-top: 30px; letter-spacing: 1px;">
                            <h3 style="font-weight: 600; font-size: 20px; font-style: normal; line-height: 30px;">
                                Recover your lost password
                            </h3>
                            <p style="font-weight: 400; font-size: 12px; font-style: normal; padding-top: 30px; line-height: 18px;">
                                You’ve entered <b>${recipient}</b> as a password recovery email address. Please click the link below to change your password.
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="text-align: center; padding-top: 40px;">
                            <!-- Start Button -->
                            <table width="170" cellpadding="0" cellspacing="0" align="center" border="0"> 
                                <tr>
                                    <td width="170" height="46" bgcolor="#10a7e8" align="center" valign="middle" style="font-size: 16px; color: #ffffff; line-height:18px; -webkit-border-radius: 50px; -moz-border-radius: 50px; border-radius: 50px; font-weight:bold;" mc:label="the_btnText" mc:edit="the_btnText">
                                        <a href="http://localhost:8001/password-recovery?email=${recipient}&salt=${salt}" target="_blank" alias="" style="text-decoration: none; color: #ffffff;">Reset Password <span style="font-size:23px;">&rsaquo;</span></a>
                                    </td>
                                </tr>
                            </table>
                            <!-- End Button --> 
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="text-align: center; padding-top: 45px; line-height: 18px; letter-spacing: 1px;">
                            <p style="font-weight: 400; font-size: 10px; font-style: normal; margin-bottom: 10px !important; text-transform: uppercase;">
                                FOR MORE INFORMATION, CLICK BELOW
                            </p>
                            <a href="https://www.uscis.gov/" style="font-weight: 400; font-size: 12px; font-style: normal; text-decoration: none;">
                                https://www.uscis.gov/
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="text-align: center; padding-top: 70px; line-height: 30px; letter-spacing: 0.15px;">
                            <h3 style="font-weight: 600; font-size: 20px; font-style: normal; margin-bottom: 5px !important; text-decoration: none;">
                                Need Help?
                            </h3>
                            <h5 style="font-weight: 400; font-size: 12px; font-style: normal; margin-top: 0 !important; margin-bottom: 5px !important; text-decoration: none;">
                                Please send feedback or bug info to
                            </h5>
                            <a href="mailto:info@engis.en.gov.ng" style="font-weight: 400; font-size: 12px; font-style: normal; text-decoration: none;">
                                info@uscis.gov
                            </a>
                        </td>
                    </tr>
                </table>
            </body>
            </html>
        `;

        return emailTemplate;
    },
}