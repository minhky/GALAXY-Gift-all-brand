.class Lcom/samsung/privilege/util/http/HttpCall$2;
.super Ljava/lang/Thread;
.source "HttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET2(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$listener:Lcom/samsung/privilege/util/http/RQListener;

.field private final synthetic val$state:Ljava/lang/Object;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/http/HttpCall$2;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/privilege/util/http/HttpCall$2;->val$listener:Lcom/samsung/privilege/util/http/RQListener;

    iput-object p3, p0, Lcom/samsung/privilege/util/http/HttpCall$2;->val$state:Ljava/lang/Object;

    .line 128
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public requestGet(Ljava/lang/String;)Lcom/samsung/privilege/util/http/HttpRS;
    .registers 11
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xc8

    .line 155
    # getter for: Lcom/samsung/privilege/util/http/HttpCall;->httpclient_RQ_GET2:Lorg/apache/http/client/HttpClient;
    invoke-static {}, Lcom/samsung/privilege/util/http/HttpCall;->access$0()Lorg/apache/http/client/HttpClient;

    move-result-object v5

    if-nez v5, :cond_10

    .line 156
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-static {v5}, Lcom/samsung/privilege/util/http/HttpCall;->access$1(Lorg/apache/http/client/HttpClient;)V

    .line 159
    :cond_10
    const/4 v3, 0x0

    .line 161
    .local v3, "responseString":Ljava/lang/String;
    :try_start_11
    # getter for: Lcom/samsung/privilege/util/http/HttpCall;->httpclient_RQ_GET2:Lorg/apache/http/client/HttpClient;
    invoke-static {}, Lcom/samsung/privilege/util/http/HttpCall;->access$0()Lorg/apache/http/client/HttpClient;

    move-result-object v5

    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    new-instance v7, Ljava/net/URI;

    invoke-direct {v7, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    invoke-interface {v5, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 162
    .local v2, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    .line 163
    .local v4, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    if-ne v5, v8, :cond_46

    .line 164
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 165
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 166
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 167
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_3f
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_11 .. :try_end_3f} :catch_5b
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_3f} :catch_77
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_3f} :catch_93

    move-result-object v3

    .line 182
    new-instance v5, Lcom/samsung/privilege/util/http/HttpRS;

    invoke-direct {v5, v8, v3}, Lcom/samsung/privilege/util/http/HttpRS;-><init>(ILjava/lang/String;)V

    .end local v1    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .end local v4    # "statusLine":Lorg/apache/http/StatusLine;
    :goto_45
    return-object v5

    .line 170
    .restart local v2    # "response":Lorg/apache/http/HttpResponse;
    .restart local v4    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_46
    :try_start_46
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 171
    new-instance v5, Ljava/io/IOException;

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_5b
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_46 .. :try_end_5b} :catch_5b
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_5b} :catch_77
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_5b} :catch_93

    .line 173
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .end local v4    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_5b
    move-exception v0

    .line 174
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    new-instance v5, Lcom/samsung/privilege/util/http/HttpRS;

    const/16 v6, -0x1e

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(ClientProtocolException)"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/samsung/privilege/util/http/HttpRS;-><init>(ILjava/lang/String;)V

    goto :goto_45

    .line 175
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_77
    move-exception v0

    .line 176
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Lcom/samsung/privilege/util/http/HttpRS;

    const/16 v6, -0x14

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(IOException)"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/samsung/privilege/util/http/HttpRS;-><init>(ILjava/lang/String;)V

    goto :goto_45

    .line 177
    .end local v0    # "e":Ljava/io/IOException;
    :catch_93
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/samsung/privilege/util/http/HttpRS;

    const/16 v6, -0xa

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(Exception)"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/samsung/privilege/util/http/HttpRS;-><init>(ILjava/lang/String;)V

    goto :goto_45
.end method

.method public run()V
    .registers 8

    .prologue
    .line 131
    :try_start_0
    iget-object v2, p0, Lcom/samsung/privilege/util/http/HttpCall$2;->val$url:Ljava/lang/String;

    .line 133
    .local v2, "url_encode":Ljava/lang/String;
    const-string v3, " "

    const-string v4, "%20"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 134
    const-string v3, "\""

    const-string v4, "%22"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 135
    const-string v3, "#"

    const-string v4, "%23"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 136
    const-string v3, "{"

    const-string v4, "%7B"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 137
    const-string v3, "}"

    const-string v4, "%7D"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 138
    const-string v3, "<"

    const-string v4, "%3C"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 139
    const-string v3, ">"

    const-string v4, "%3E"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 141
    const-string v3, "MyLog"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "url_encode="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0, v2}, Lcom/samsung/privilege/util/http/HttpCall$2;->requestGet(Ljava/lang/String;)Lcom/samsung/privilege/util/http/HttpRS;

    move-result-object v1

    .line 144
    .local v1, "resp":Lcom/samsung/privilege/util/http/HttpRS;
    iget-object v3, p0, Lcom/samsung/privilege/util/http/HttpCall$2;->val$listener:Lcom/samsung/privilege/util/http/RQListener;

    iget v4, v1, Lcom/samsung/privilege/util/http/HttpRS;->response_code:I

    iget-object v5, v1, Lcom/samsung/privilege/util/http/HttpRS;->response_text:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/privilege/util/http/HttpCall$2;->val$state:Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lcom/samsung/privilege/util/http/RQListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_5d} :catch_5e
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_5d} :catch_67
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5d} :catch_70

    .line 152
    .end local v1    # "resp":Lcom/samsung/privilege/util/http/HttpRS;
    .end local v2    # "url_encode":Ljava/lang/String;
    :goto_5d
    return-void

    .line 145
    :catch_5e
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-object v3, p0, Lcom/samsung/privilege/util/http/HttpCall$2;->val$listener:Lcom/samsung/privilege/util/http/RQListener;

    iget-object v4, p0, Lcom/samsung/privilege/util/http/HttpCall$2;->val$state:Ljava/lang/Object;

    invoke-interface {v3, v0, v4}, Lcom/samsung/privilege/util/http/RQListener;->onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V

    goto :goto_5d

    .line 147
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_67
    move-exception v0

    .line 148
    .local v0, "e":Ljava/net/MalformedURLException;
    iget-object v3, p0, Lcom/samsung/privilege/util/http/HttpCall$2;->val$listener:Lcom/samsung/privilege/util/http/RQListener;

    iget-object v4, p0, Lcom/samsung/privilege/util/http/HttpCall$2;->val$state:Ljava/lang/Object;

    invoke-interface {v3, v0, v4}, Lcom/samsung/privilege/util/http/RQListener;->onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V

    goto :goto_5d

    .line 149
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_70
    move-exception v0

    .line 150
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/samsung/privilege/util/http/HttpCall$2;->val$listener:Lcom/samsung/privilege/util/http/RQListener;

    iget-object v4, p0, Lcom/samsung/privilege/util/http/HttpCall$2;->val$state:Ljava/lang/Object;

    invoke-interface {v3, v0, v4}, Lcom/samsung/privilege/util/http/RQListener;->onIOException(Ljava/io/IOException;Ljava/lang/Object;)V

    goto :goto_5d
.end method
