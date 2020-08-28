node {
    // def projectName = env.JOB_NAME.split("/")[0]
    // def url = "default"
    // def port = "default"
    // if(env.BRANCH_NAME=="master"){
    //     url = env.API_URL_MASTER
    //     port = env.API_PORT_MASTER
    // }
    // else if(env.BRANCH_NAME=="qa"){
    //     url = env.API_URL_QA
    //     port = env.API_PORT_QA
    // }
    // else if(env.BRANCH_NAME=="dev"){
    //     url = env.API_URL_DEV
    //     port = env.API_PORT_DEV
    // }
    withEnv([
        "PROJECT_NAME=${projectName}",
        "WORKSPACE=${pwd()}",
        "ENVIRONMENT=${env.BRANCH_NAME}",
    ]) {
        stage 'Checkout'
        checkout scm
        //sh 'printenv'
        echo "environment is ${ENVIRONMENT}"
        
        stage 'Build'
        make docker-build
        
        stage 'Test'
        make docker-up
    }
}

