.class public abstract Lcom/loopj/android/http/DataAsyncHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "DataAsyncHttpResponseHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DataAsyncHttpRH"

.field protected static final PROGRESS_DATA_MESSAGE:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 39
    return-void
.end method

.method public static copyOfRange([BII)[B
    .registers 6

    .prologue
    .line 57
    if-le p1, p2, :cond_8

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 60
    :cond_8
    array-length v0, p0

    .line 61
    if-ltz p1, :cond_d

    if-le p1, v0, :cond_13

    .line 62
    :cond_d
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 64
    :cond_13
    sub-int v1, p2, p1

    .line 65
    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 66
    new-array v1, v1, [B

    .line 67
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    return-object v1
.end method


# virtual methods
.method getResponseData(Lcz/msebera/android/httpclient/HttpEntity;)[B
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 116
    const/4 v0, 0x0

    .line 117
    if-eqz p1, :cond_6b

    .line 118
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 119
    if-eqz v2, :cond_6b

    .line 120
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v0

    .line 121
    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v0, v4

    if-lez v3, :cond_1e

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "HTTP entity too large to be buffered in memory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1e
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gez v3, :cond_26

    .line 125
    const-wide/16 v0, 0x1000

    .line 128
    :cond_26
    :try_start_26
    new-instance v3, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    long-to-int v4, v0

    invoke-direct {v3, v4}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;-><init>(I)V
    :try_end_2c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_26 .. :try_end_2c} :catch_57

    .line 130
    const/16 v4, 0x1000

    :try_start_2e
    new-array v4, v4, [B

    .line 133
    :goto_30
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_64

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-nez v6, :cond_64

    .line 134
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->a([BII)V

    .line 135
    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->copyOfRange([BII)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->sendProgressDataMessage([B)V

    .line 136
    int-to-long v6, v8

    invoke-virtual {p0, v6, v7, v0, v1}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->sendProgressMessage(JJ)V
    :try_end_51
    .catchall {:try_start_2e .. :try_end_51} :catchall_52

    goto :goto_30

    .line 139
    :catchall_52
    move-exception v0

    :try_start_53
    invoke-static {v2}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    throw v0
    :try_end_57
    .catch Ljava/lang/OutOfMemoryError; {:try_start_53 .. :try_end_57} :catch_57

    .line 142
    :catch_57
    move-exception v0

    .line 143
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 144
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "File too large to fit into available memory"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_64
    :try_start_64
    invoke-static {v2}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 141
    invoke-virtual {v3}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->b()[B
    :try_end_6a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_64 .. :try_end_6a} :catch_57

    move-result-object v0

    .line 148
    :cond_6b
    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3a

    .line 104
    :goto_8
    return-void

    .line 92
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 93
    if-eqz v0, :cond_2d

    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_2d

    .line 95
    const/4 v1, 0x0

    :try_start_16
    aget-object v0, v0, v1

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->onProgressData([B)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_1f} :catch_20

    goto :goto_8

    .line 96
    :catch_20
    move-exception v0

    .line 97
    sget-object v1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v2, "DataAsyncHttpRH"

    const-string/jumbo v3, "custom onProgressData contains an error"

    invoke-interface {v1, v2, v3, v0}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 100
    :cond_2d
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v1, "DataAsyncHttpRH"

    const-string/jumbo v2, "PROGRESS_DATA_MESSAGE didn\'t got enough params"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 90
    nop

    :pswitch_data_3a
    .packed-switch 0x7
        :pswitch_9
    .end packed-switch
.end method

.method public onProgressData([B)V
    .registers 5

    .prologue
    .line 77
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v1, "DataAsyncHttpRH"

    const-string/jumbo v2, "onProgressData(byte[]) was not overriden, but callback was received"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public final sendProgressDataMessage([B)V
    .registers 5

    .prologue
    .line 81
    const/4 v0, 0x7

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 82
    return-void
.end method
