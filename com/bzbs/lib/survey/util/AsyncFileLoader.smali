.class public Lcom/bzbs/lib/survey/util/AsyncFileLoader;
.super Landroid/os/AsyncTask;
.source "AsyncFileLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final TIMEOUT_CONNECT:I

.field private final TIMEOUT_READ:I

.field private _bufferedInputStream:Ljava/io/BufferedInputStream;

.field private _currentByte:I

.field private _fileOutputStream:Ljava/io/FileOutputStream;

.field private _inputStream:Ljava/io/InputStream;

.field private _outputFile:Ljava/io/File;

.field private _totalByte:I

.field private _url:Ljava/net/URL;

.field private _urlConnection:Ljava/net/URLConnection;

.field private _urlStr:Ljava/lang/String;

.field private buff:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .registers 7
    .param p1, "urlStr"    # Ljava/lang/String;
    .param p2, "outputFile"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 15
    const-class v0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->TAG:Ljava/lang/String;

    .line 19
    const/16 v0, 0x1388

    iput v0, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->TIMEOUT_READ:I

    .line 20
    const/16 v0, 0x7530

    iput v0, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->TIMEOUT_CONNECT:I

    .line 25
    const/16 v0, 0x1400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->buff:[B

    .line 27
    iput v1, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_totalByte:I

    .line 28
    iput v1, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_currentByte:I

    .line 31
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_urlStr:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_outputFile:Ljava/io/File;

    .line 33
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_outputFile.length() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_outputFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method private close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 130
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_fileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 131
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_bufferedInputStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 132
    return-void
.end method

.method private connect()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_urlStr:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_url:Ljava/net/URL;

    .line 113
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_urlConnection:Ljava/net/URLConnection;

    .line 114
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_urlConnection:Ljava/net/URLConnection;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 115
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_urlConnection:Ljava/net/URLConnection;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 116
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_inputStream:Ljava/io/InputStream;

    .line 117
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_inputStream:Ljava/io/InputStream;

    const/16 v2, 0x1400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_bufferedInputStream:Ljava/io/BufferedInputStream;

    .line 118
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_outputFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_fileOutputStream:Ljava/io/FileOutputStream;

    .line 121
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    iput v0, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_totalByte:I

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_currentByte:I

    .line 126
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 41
    :try_start_7
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_outputFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 42
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_outputFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_7e

    .line 48
    :cond_14
    :goto_14
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 80
    :goto_18
    return-object v2

    .line 53
    :cond_19
    :try_start_19
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_bufferedInputStream:Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->buff:[B

    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_44

    .line 54
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_fileOutputStream:Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->buff:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 55
    iget v2, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_currentByte:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_currentByte:I

    .line 57
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->isCancelled()Z
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_34} :catch_4a

    move-result v2

    if-eqz v2, :cond_19

    .line 59
    :try_start_37
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_outputFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 60
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_outputFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_44} :catch_7c
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_44} :catch_4a

    .line 80
    :cond_44
    :goto_44
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_18

    .line 69
    .end local v1    # "len":I
    :catch_4a
    move-exception v0

    .line 70
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "error on read file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/lib/survey/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :try_start_68
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_outputFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_75

    .line 73
    iget-object v2, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_outputFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_75} :catch_7a

    .line 78
    :cond_75
    :goto_75
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_18

    .line 75
    :catch_7a
    move-exception v2

    goto :goto_75

    .line 62
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "len":I
    :catch_7c
    move-exception v2

    goto :goto_44

    .line 44
    .end local v1    # "len":I
    :catch_7e
    move-exception v2

    goto :goto_14
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 14
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getLoadedBytePercent()I
    .registers 3

    .prologue
    .line 135
    iget v0, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_totalByte:I

    if-gtz v0, :cond_6

    .line 136
    const/4 v0, 0x0

    .line 139
    :goto_5
    return v0

    :cond_6
    iget v0, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_currentByte:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->_totalByte:I

    div-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_5
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 100
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2a

    .line 102
    :try_start_7
    invoke-direct {p0}, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_b

    .line 109
    :goto_a
    return-void

    .line 103
    :catch_b
    move-exception v0

    .line 104
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error on postExecute:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 107
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2a
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "result: load error"

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 14
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 5

    .prologue
    .line 86
    :try_start_0
    invoke-direct {p0}, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->connect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 91
    :goto_3
    return-void

    .line 87
    :catch_4
    move-exception v0

    .line 88
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error on preExecute:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/bzbs/lib/survey/util/AsyncFileLoader;->cancel(Z)Z

    goto :goto_3
.end method
