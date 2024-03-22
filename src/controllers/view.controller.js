module.exports = {
    home: async (req, res) => {
        res.render('index', { title: "Home"})
    },
    signIn: async (req, res) => {
        res.render('signIn', { title:'Sign In'})
    },
    verifyAccount: async (req, res) => {
        res.render('accountVerification', { title:'Verify Account'})
    },
    signUp: async (req, res) => {
        res.render('signUp', { title:'Sign Up'})
    },
    forgotPassword: async (req, res) => {
        res.render('forgot-password', { title:'Forgot Password'})
    },
    passwordRecovery: async (req, res) => {
        res.render('password-recovery', { title:'Password Recovery'})
    },

    /* Protected pages */
    dashboard: async (req, res) => {
        res.render('dashboard', { title:'Dashboard', page_title: 'Dashboard'})
    },
    applications: async (req, res) => {
        res.render('applications', { title:'Applications', page_title: 'Applications'})
    },
}