module.exports = {
    home: async (req, res) => {
        res.render('index', { title: "Home"})
    },
    signIn: async (req, res) => {
        res.render('signIn', { title:'Sign In'})
    },
    signUp: async (req, res) => {
        res.render('signUp', { title:'Sign Up'})
    },

    /* Protected pages */
    dashboard: async (req, res) => {
        res.render('dashboard', { title:'Dashboard'})
    },
}