.class Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;
.super Lokhttp3/internal/http/Http1xStream$AbstractSource;
.source "Http1xStream.java"


# instance fields
.field final synthetic d:Lokhttp3/internal/http/Http1xStream;

.field private e:Z


# direct methods
.method private constructor <init>(Lokhttp3/internal/http/Http1xStream;)V
    .registers 3

    .prologue
    .line 467
    iput-object p1, p0, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;->d:Lokhttp3/internal/http/Http1xStream;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/http/Http1xStream$AbstractSource;-><init>(Lokhttp3/internal/http/Http1xStream;Lokhttp3/internal/http/Http1xStream$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/internal/http/Http1xStream;Lokhttp3/internal/http/Http1xStream$1;)V
    .registers 3

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;-><init>(Lokhttp3/internal/http/Http1xStream;)V

    return-void
.end method


# virtual methods
.method public a(Lokio/Buffer;J)J
    .registers 10

    .prologue
    const/4 v5, 0x1

    const-wide/16 v0, -0x1

    .line 472
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_23

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

    .line 473
    :cond_23
    iget-boolean v2, p0, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;->b:Z

    if-eqz v2, :cond_30

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_30
    iget-boolean v2, p0, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;->e:Z

    if-eqz v2, :cond_35

    .line 482
    :goto_34
    return-wide v0

    .line 476
    :cond_35
    iget-object v2, p0, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;->d:Lokhttp3/internal/http/Http1xStream;

    invoke-static {v2}, Lokhttp3/internal/http/Http1xStream;->b(Lokhttp3/internal/http/Http1xStream;)Lokio/BufferedSource;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lokio/BufferedSource;->a(Lokio/Buffer;J)J

    move-result-wide v2

    .line 477
    cmp-long v4, v2, v0

    if-nez v4, :cond_49

    .line 478
    iput-boolean v5, p0, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;->e:Z

    .line 479
    invoke-virtual {p0, v5}, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;->a(Z)V

    goto :goto_34

    :cond_49
    move-wide v0, v2

    .line 482
    goto :goto_34
.end method

.method public close()V
    .registers 2

    .prologue
    .line 486
    iget-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;->b:Z

    if-eqz v0, :cond_5

    .line 491
    :goto_4
    return-void

    .line 487
    :cond_5
    iget-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;->e:Z

    if-nez v0, :cond_d

    .line 488
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;->a(Z)V

    .line 490
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/http/Http1xStream$UnknownLengthSource;->b:Z

    goto :goto_4
.end method
