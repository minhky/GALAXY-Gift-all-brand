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
    .registers 8
    .param p0, "original"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 57
    if-le p1, p2, :cond_8

    .line 58
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 60
    :cond_8
    array-length v1, p0

    .line 61
    .local v1, "originalLength":I
    if-ltz p1, :cond_d

    if-le p1, v1, :cond_13

    .line 62
    :cond_d
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    .line 64
    :cond_13
    sub-int v3, p2, p1

    .line 65
    .local v3, "resultLength":I
    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 66
    .local v0, "copyLength":I
    new-array v2, v3, [B

    .line 67
    .local v2, "result":[B
    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    return-object v2
.end method


# virtual methods
.method getResponseData(Lcz/msebera/android/httpclient/HttpEntity;)[B
    .registers 14
    .param p1, "entity"    # Lcz/msebera/android/httpclient/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v7, 0x0

    .line 117
    .local v7, "responseBody":[B
    if-eqz p1, :cond_6b

    .line 118
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 119
    .local v5, "instream":Ljava/io/InputStream;
    if-eqz v5, :cond_6b

    .line 120
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpEntity;->getContentLength()J

    move-result-wide v2

    .line 121
    .local v2, "contentLength":J
    const-wide/32 v10, 0x7fffffff

    cmp-long v9, v2, v10

    if-lez v9, :cond_1d

    .line 122
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "HTTP entity too large to be buffered in memory"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 124
    :cond_1d
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-gez v9, :cond_25

    .line 125
    const-wide/16 v2, 0x1000

    .line 128
    :cond_25
    :try_start_25
    new-instance v0, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    long-to-int v9, v2

    invoke-direct {v0, v9}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;-><init>(I)V
    :try_end_2b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_25 .. :try_end_2b} :catch_57

    .line 130
    .local v0, "buffer":Lcz/msebera/android/httpclient/util/ByteArrayBuffer;
    const/16 v9, 0x1000

    :try_start_2d
    new-array v8, v9, [B

    .line 131
    .local v8, "tmp":[B
    const/4 v1, 0x0

    .line 133
    .local v1, "count":I
    :goto_30
    invoke-virtual {v5, v8}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "l":I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_64

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v9

    if-nez v9, :cond_64

    .line 134
    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v6}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->append([BII)V

    .line 135
    const/4 v9, 0x0

    invoke-static {v8, v9, v6}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->copyOfRange([BII)[B

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->sendProgressDataMessage([B)V

    .line 136
    int-to-long v10, v1

    invoke-virtual {p0, v10, v11, v2, v3}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->sendProgressMessage(JJ)V
    :try_end_51
    .catchall {:try_start_2d .. :try_end_51} :catchall_52

    goto :goto_30

    .line 139
    .end local v1    # "count":I
    .end local v6    # "l":I
    .end local v8    # "tmp":[B
    :catchall_52
    move-exception v9

    :try_start_53
    invoke-static {v5}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    throw v9
    :try_end_57
    .catch Ljava/lang/OutOfMemoryError; {:try_start_53 .. :try_end_57} :catch_57

    .line 142
    .end local v0    # "buffer":Lcz/msebera/android/httpclient/util/ByteArrayBuffer;
    :catch_57
    move-exception v4

    .line 143
    .local v4, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 144
    new-instance v9, Ljava/io/IOException;

    const-string/jumbo v10, "File too large to fit into available memory"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 139
    .end local v4    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v0    # "buffer":Lcz/msebera/android/httpclient/util/ByteArrayBuffer;
    .restart local v1    # "count":I
    .restart local v6    # "l":I
    .restart local v8    # "tmp":[B
    :cond_64
    :try_start_64
    invoke-static {v5}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 141
    invoke-virtual {v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->toByteArray()[B
    :try_end_6a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_64 .. :try_end_6a} :catch_57

    move-result-object v7

    .line 148
    .end local v0    # "buffer":Lcz/msebera/android/httpclient/util/ByteArrayBuffer;
    .end local v1    # "count":I
    .end local v2    # "contentLength":J
    .end local v5    # "instream":Ljava/io/InputStream;
    .end local v6    # "l":I
    .end local v8    # "tmp":[B
    :cond_6b
    return-object v7
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 90
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_3a

    .line 104
    :goto_8
    return-void

    .line 92
    :pswitch_9
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    .line 93
    .local v0, "response":[Ljava/lang/Object;
    if-eqz v0, :cond_2e

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2e

    .line 95
    const/4 v2, 0x0

    :try_start_17
    aget-object v2, v0, v2

    check-cast v2, [B

    check-cast v2, [B

    invoke-virtual {p0, v2}, Lcom/loopj/android/http/DataAsyncHttpResponseHandler;->onProgressData([B)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_8

    .line 96
    :catch_21
    move-exception v1

    .line 97
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v3, "DataAsyncHttpRH"

    const-string/jumbo v4, "custom onProgressData contains an error"

    invoke-interface {v2, v3, v4, v1}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 100
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2e
    sget-object v2, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string/jumbo v3, "DataAsyncHttpRH"

    const-string/jumbo v4, "PROGRESS_DATA_MESSAGE didn\'t got enough params"

    invoke-interface {v2, v3, v4}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 90
    :pswitch_data_3a
    .packed-switch 0x7
        :pswitch_9
    .end packed-switch
.end method

.method public onProgressData([B)V
    .registers 5
    .param p1, "responseBody"    # [B

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
    .param p1, "responseBytes"    # [B

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
