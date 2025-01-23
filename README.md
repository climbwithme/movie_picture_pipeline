# Movie Picture Pipeline

## Application URLs

- **Frontend:** [http://a49d78c865ff3418f8d95873afb875e5-1921860290.us-east-1.elb.amazonaws.com/](http://a49d78c865ff3418f8d95873afb875e5-1921860290.us-east-1.elb.amazonaws.com/)

- **Backend:** [http://a8e486773219a403d96d61c998e88483-1204872032.us-east-1.elb.amazonaws.com/movies](http://a8e486773219a403d96d61c998e88483-1204872032.us-east-1.elb.amazonaws.com/movies)


## Evidences: 

### 1. Kubectl statuses:

![Kubectl Statuses](evidences/1_kubectl_status.png)


### 2. Frontend:

![Frontend](evidences/2_Frontend.png)


### 3. Backend:

![Backend](evidences/3_Backend.png)


### 4. Negative Testing:

- **Backend - Failed Lint:** [https://github.com/climbwithme/movie_picture_pipeline/actions/runs/12936446958](https://github.com/climbwithme/movie_picture_pipeline/actions/runs/12936446958)

![4_B_F_Lint](evidences/4_B_F_Lint.png)

- **Backend - Failed Test:** [https://github.com/climbwithme/movie_picture_pipeline/actions/runs/12936344158](https://github.com/climbwithme/movie_picture_pipeline/actions/runs/12936344158)

![4_B_F_Test](evidences/4_B_F_Test.png)

- **Frontend - Failed Lint:** [https://github.com/climbwithme/movie_picture_pipeline/actions/runs/12936459061](https://github.com/climbwithme/movie_picture_pipeline/actions/runs/12936459061)

![4_F_F_Lint](evidences/4_F_F_Lint.png)

- **Frontend - Failed Test:** [https://github.com/climbwithme/movie_picture_pipeline/actions/runs/12936363289](https://github.com/climbwithme/movie_picture_pipeline/actions/runs/12936363289)

![4_F_F_Lint](evidences/4_F_F_Lint.png)


### 5. Environment Configuration:

![GitHub Secrets](evidences/5_Secrets.png)

![GitHub Env Variables](evidences/5_Env_Variables.png)