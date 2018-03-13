tot.wssplot <- function(data, nc, seed=1234){
  #�����Ϊһ��ʱ���ܵ����ƽ����              
  tot.wss <- (nrow(data)-1)*sum(apply(data,2,var)) 
  for (i in 2:nc){
    #����ָ�����������
    set.seed(seed) 
    tot.wss[i] <- kmeans(data, centers=i, iter.max = 100)$tot.withinss
  }
  plot(1:nc, tot.wss, type="b", xlab="Number of Clusters",
       ylab="Within groups sum of squares",col = 'blue',
       lwd = 2, main = 'Choose best Clusters')
}