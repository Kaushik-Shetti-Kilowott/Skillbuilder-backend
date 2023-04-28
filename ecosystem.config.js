module.exports = {
    apps: [
        {
            name: "skillBuilder-backend-api",
            script: 'dist/server.js',
            instances : 1,
            exec_mode : "cluster",
            kill_timeout : 3 * 60, //3 Mins
            wait_ready: true
        }
    ]
};
