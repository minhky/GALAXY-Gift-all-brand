.class Lokhttp3/internal/http/Http1xStream$FixedLengthSource;
.super Lokhttp3/internal/http/Http1xStream$AbstractSource;
.source "Http1xStream.java"


# instance fields
.field final synthetic d:Lokhttp3/internal/http/Http1xStream;

.field private e:J


# direct methods
.method public constructor <init>(Lokhttp3/internal/http/Http1xStream;J)V
    .registers 8

    .prologue
    .line 369
    iput-object p1, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->d:Lokhttp3/internal/http/Http1xStream;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/http/Http1xStream$AbstractSource;-><init>(Lokhttp3/internal/http/Http1xStream;Lokhttp3/internal/http/Http1xStream$1;)V

    .line 370
    iput-wide p2, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->e:J

    .line 371
    iget-wide v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    .line 372
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->a(Z)V

    .line 374
    :cond_14
    return-void
.end method


# virtual methods
.method public a(Lokio/Buffer;J)J
    .registers 12

    .prologue
    const-wide/16 v0, -0x1

    const-wide/16 v6, 0x0

    .line 377
    cmp-long v2, p2, v6

    if-gez v2, :cond_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_22
    iget-boolean v2, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->b:Z

    if-eqz v2, :cond_2f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_2f
    iget-wide v2, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->e:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_36

    .line 391
    :goto_35
    return-wide v0

    .line 381
    :cond_36
    iget-object v2, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->d:Lokhttp3/internal/http/Http1xStream;

    invoke-static {v2}, Lokhttp3/internal/http/Http1xStream;->b(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSource;

    move-result-object v2

    iget-wide v4, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->e:J

    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v2, p1, v4, v5}, Lokio/BufferedSource;->a(Lokio/Buffer;J)J

    move-result-wide v2

    .line 382
    cmp-long v0, v2, v0

    if-nez v0, :cond_57

    .line 383
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->a(Z)V

    .line 384
    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_57
    iget-wide v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->e:J

    .line 388
    iget-wide v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->e:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_66

    .line 389
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->a(Z)V

    :cond_66
    move-wide v0, v2

    .line 391
    goto :goto_35
.end method

.method public close()V
    .registers 5

    .prologue
    .line 395
    iget-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->b:Z

    if-eqz v0, :cond_5

    .line 402
    :goto_4
    return-void

    .line 397
    :cond_5
    iget-wide v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1b

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lokhttp3/internal/Util;->a(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 398
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->a(Z)V

    .line 401
    :cond_1b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$FixedLengthSource;->b:Z

    goto :goto_4
.end method
