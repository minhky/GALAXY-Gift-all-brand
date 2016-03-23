.class public Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;
.super Ljava/io/OutputStream;
.source "ChunkedOutputStreamHC4.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final cache:[B

.field private cachePosition:I

.field private closed:Z

.field private final out:Lorg/apache/http/io/SessionOutputBuffer;

.field private wroteLastChunk:Z


# direct methods
.method public constructor <init>(ILorg/apache/http/io/SessionOutputBuffer;)V
    .registers 4
    .param p1, "bufferSize"    # I
    .param p2, "out"    # Lorg/apache/http/io/SessionOutputBuffer;

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 56
    iput v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cachePosition:I

    .line 58
    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->wroteLastChunk:Z

    .line 61
    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->closed:Z

    .line 101
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cache:[B

    .line 102
    iput-object p2, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->out:Lorg/apache/http/io/SessionOutputBuffer;

    .line 103
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/io/SessionOutputBuffer;)V
    .registers 3
    .param p1, "out"    # Lorg/apache/http/io/SessionOutputBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 90
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;-><init>(ILorg/apache/http/io/SessionOutputBuffer;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/io/SessionOutputBuffer;I)V
    .registers 3
    .param p1, "out"    # Lorg/apache/http/io/SessionOutputBuffer;
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p2, p1}, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;-><init>(ILorg/apache/http/io/SessionOutputBuffer;)V

    .line 76
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->closed:Z

    if-nez v0, :cond_f

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->closed:Z

    .line 204
    invoke-virtual {p0}, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->finish()V

    .line 205
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionOutputBuffer;->flush()V

    .line 207
    :cond_f
    return-void
.end method

.method public finish()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->wroteLastChunk:Z

    if-nez v0, :cond_d

    .line 143
    invoke-virtual {p0}, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->flushCache()V

    .line 144
    invoke-virtual {p0}, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->writeClosingChunk()V

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->wroteLastChunk:Z

    .line 147
    :cond_d
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p0}, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->flushCache()V

    .line 194
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionOutputBuffer;->flush()V

    .line 195
    return-void
.end method

.method protected flushCache()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 109
    iget v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cachePosition:I

    if-lez v0, :cond_23

    .line 110
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->out:Lorg/apache/http/io/SessionOutputBuffer;

    iget v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cachePosition:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->out:Lorg/apache/http/io/SessionOutputBuffer;

    iget-object v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cache:[B

    iget v2, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cachePosition:I

    invoke-interface {v0, v1, v3, v2}, Lorg/apache/http/io/SessionOutputBuffer;->write([BII)V

    .line 112
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->out:Lorg/apache/http/io/SessionOutputBuffer;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    .line 113
    iput v3, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cachePosition:I

    .line 115
    :cond_23
    return-void
.end method

.method protected flushCacheWithAppend([BII)V
    .registers 8
    .param p1, "bufferToAppend"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 122
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->out:Lorg/apache/http/io/SessionOutputBuffer;

    iget v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cachePosition:I

    add-int/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->out:Lorg/apache/http/io/SessionOutputBuffer;

    iget-object v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cache:[B

    iget v2, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cachePosition:I

    invoke-interface {v0, v1, v3, v2}, Lorg/apache/http/io/SessionOutputBuffer;->write([BII)V

    .line 124
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->out:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/io/SessionOutputBuffer;->write([BII)V

    .line 125
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->out:Lorg/apache/http/io/SessionOutputBuffer;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    .line 126
    iput v3, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cachePosition:I

    .line 127
    return-void
.end method

.method public write(I)V
    .registers 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->closed:Z

    if-eqz v0, :cond_d

    .line 153
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attempted write to closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_d
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cache:[B

    iget v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cachePosition:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 156
    iget v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cachePosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cachePosition:I

    .line 157
    iget v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cachePosition:I

    iget-object v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cache:[B

    array-length v1, v1

    if-ne v0, v1, :cond_24

    .line 158
    invoke-virtual {p0}, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->flushCache()V

    .line 160
    :cond_24
    return-void
.end method

.method public write([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->write([BII)V

    .line 169
    return-void
.end method

.method public write([BII)V
    .registers 6
    .param p1, "src"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->closed:Z

    if-eqz v0, :cond_d

    .line 178
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attempted write to closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_d
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cache:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cachePosition:I

    sub-int/2addr v0, v1

    if-lt p3, v0, :cond_19

    .line 181
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->flushCacheWithAppend([BII)V

    .line 186
    :goto_18
    return-void

    .line 183
    :cond_19
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cache:[B

    iget v1, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cachePosition:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    iget v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cachePosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->cachePosition:I

    goto :goto_18
.end method

.method protected writeClosingChunk()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->out:Lorg/apache/http/io/SessionOutputBuffer;

    const-string/jumbo v1, "0"

    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedOutputStreamHC4;->out:Lorg/apache/http/io/SessionOutputBuffer;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    .line 133
    return-void
.end method