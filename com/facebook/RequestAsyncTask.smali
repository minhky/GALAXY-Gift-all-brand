.class public Lcom/facebook/RequestAsyncTask;
.super Landroid/os/AsyncTask;
.source "RequestAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/facebook/Response;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static executeOnExecutorMethod:Ljava/lang/reflect/Method;


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field private exception:Ljava/lang/Exception;

.field private final requests:Lcom/facebook/RequestBatch;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 36
    const-class v2, Lcom/facebook/RequestAsyncTask;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/facebook/RequestAsyncTask;->TAG:Ljava/lang/String;

    .line 45
    const-class v2, Landroid/os/AsyncTask;

    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    .local v0, "method":Ljava/lang/reflect/Method;
    :goto_11
    if-lt v2, v5, :cond_14

    .line 54
    :goto_13
    return-void

    .line 45
    :cond_14
    aget-object v0, v4, v2

    .line 46
    const-string v6, "executeOnExecutor"

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 47
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 48
    .local v1, "parameters":[Ljava/lang/Class;
    array-length v6, v1

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3c

    aget-object v6, v1, v3

    const-class v7, Ljava/util/concurrent/Executor;

    if-ne v6, v7, :cond_3c

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 49
    sput-object v0, Lcom/facebook/RequestAsyncTask;->executeOnExecutorMethod:Ljava/lang/reflect/Method;

    goto :goto_13

    .line 45
    .end local v1    # "parameters":[Ljava/lang/Class;
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_11
.end method

.method public constructor <init>(Lcom/facebook/RequestBatch;)V
    .registers 3
    .param p1, "requests"    # Lcom/facebook/RequestBatch;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/facebook/RequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)V
    .registers 3
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "requests"    # Lcom/facebook/RequestBatch;

    .prologue
    .line 121
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 122
    iput-object p2, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    .line 123
    iput-object p1, p0, Lcom/facebook/RequestAsyncTask;->connection:Ljava/net/HttpURLConnection;

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;Ljava/util/Collection;)V
    .registers 4
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p2, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/Request;>;"
    new-instance v0, Lcom/facebook/RequestBatch;

    invoke-direct {v0, p2}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v0}, Lcom/facebook/RequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)V

    .line 110
    return-void
.end method

.method public varargs constructor <init>(Ljava/net/HttpURLConnection;[Lcom/facebook/Request;)V
    .registers 4
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "requests"    # [Lcom/facebook/Request;

    .prologue
    .line 96
    new-instance v0, Lcom/facebook/RequestBatch;

    invoke-direct {v0, p2}, Lcom/facebook/RequestBatch;-><init>([Lcom/facebook/Request;)V

    invoke-direct {p0, p1, v0}, Lcom/facebook/RequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/Request;>;"
    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/RequestBatch;

    invoke-direct {v1, p1}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/RequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)V

    .line 74
    return-void
.end method

.method public varargs constructor <init>([Lcom/facebook/Request;)V
    .registers 4
    .param p1, "requests"    # [Lcom/facebook/Request;

    .prologue
    .line 63
    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/RequestBatch;

    invoke-direct {v1, p1}, Lcom/facebook/RequestBatch;-><init>([Lcom/facebook/Request;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/RequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)V

    .line 64
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/RequestAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .registers 5
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/facebook/RequestAsyncTask;->connection:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_b

    .line 163
    iget-object v1, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    invoke-virtual {v1}, Lcom/facebook/RequestBatch;->executeAndWait()Ljava/util/List;

    move-result-object v1

    .line 169
    :goto_a
    return-object v1

    .line 165
    :cond_b
    iget-object v1, p0, Lcom/facebook/RequestAsyncTask;->connection:Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    invoke-static {v1, v2}, Lcom/facebook/Request;->executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v1

    goto :goto_a

    .line 167
    :catch_14
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    iput-object v0, p0, Lcom/facebook/RequestAsyncTask;->exception:Ljava/lang/Exception;

    .line 169
    const/4 v1, 0x0

    goto :goto_a
.end method

.method executeOnSettingsExecutor()Lcom/facebook/RequestAsyncTask;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 174
    sget-object v0, Lcom/facebook/RequestAsyncTask;->executeOnExecutorMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_19

    .line 176
    :try_start_5
    sget-object v0, Lcom/facebook/RequestAsyncTask;->executeOnExecutorMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_18} :catch_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_18} :catch_1f

    .line 186
    :goto_18
    return-object p0

    .line 183
    :cond_19
    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/facebook/RequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_18

    .line 179
    :catch_1f
    move-exception v0

    goto :goto_18

    .line 177
    :catch_21
    move-exception v0

    goto :goto_18
.end method

.method protected final getException()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/facebook/RequestAsyncTask;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method protected final getRequests()Lcom/facebook/RequestBatch;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/facebook/RequestAsyncTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/Response;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/facebook/RequestAsyncTask;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_1e

    .line 155
    sget-object v0, Lcom/facebook/RequestAsyncTask;->TAG:Ljava/lang/String;

    const-string v1, "onPostExecute: exception encountered during request: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/RequestAsyncTask;->exception:Ljava/lang/Exception;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_1e
    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .prologue
    .line 142
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 144
    iget-object v0, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    invoke-virtual {v0}, Lcom/facebook/RequestBatch;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_15

    .line 146
    iget-object v0, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1}, Lcom/facebook/RequestBatch;->setCallbackHandler(Landroid/os/Handler;)V

    .line 148
    :cond_15
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{RequestAsyncTask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/RequestAsyncTask;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    const-string v1, ", requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    return-object v0
.end method
