.class public final Lrx/internal/util/unsafe/SpmcArrayQueue;
.super Lrx/internal/util/unsafe/SpmcArrayQueueL3Pad;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/SpmcArrayQueueL3Pad",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/SpmcArrayQueueL3Pad;-><init>(I)V

    .line 113
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .registers 5

    .prologue
    .line 211
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->a()J

    move-result-wide v0

    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 117
    if-nez p1, :cond_b

    .line 118
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Null is not a valid element"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_b
    iget-object v0, p0, Lrx/internal/util/unsafe/SpmcArrayQueue;->c:[Ljava/lang/Object;

    .line 121
    iget-wide v2, p0, Lrx/internal/util/unsafe/SpmcArrayQueue;->b:J

    .line 122
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->b()J

    move-result-wide v4

    .line 123
    invoke-virtual {p0, v4, v5}, Lrx/internal/util/unsafe/SpmcArrayQueue;->a(J)J

    move-result-wide v6

    .line 124
    invoke-virtual {p0, v0, v6, v7}, Lrx/internal/util/unsafe/SpmcArrayQueue;->b([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 125
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->a()J

    move-result-wide v8

    sub-long v8, v4, v8

    .line 127
    cmp-long v1, v8, v2

    if-lez v1, :cond_29

    .line 128
    const/4 v0, 0x0

    .line 139
    :goto_28
    return v0

    .line 132
    :cond_29
    invoke-virtual {p0, v0, v6, v7}, Lrx/internal/util/unsafe/SpmcArrayQueue;->b([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_29

    .line 135
    :cond_2f
    invoke-virtual {p0, v0, v6, v7, p1}, Lrx/internal/util/unsafe/SpmcArrayQueue;->a([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 138
    const-wide/16 v0, 0x1

    add-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Lrx/internal/util/unsafe/SpmcArrayQueue;->d(J)V

    .line 139
    const/4 v0, 0x1

    goto :goto_28
.end method

.method public peek()Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->c()J

    move-result-wide v2

    .line 174
    :cond_4
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->a()J

    move-result-wide v0

    .line 175
    cmp-long v4, v0, v2

    if-ltz v4, :cond_19

    .line 176
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->b()J

    move-result-wide v4

    .line 177
    cmp-long v6, v0, v4

    if-ltz v6, :cond_16

    .line 178
    const/4 v0, 0x0

    .line 184
    :goto_15
    return-object v0

    .line 180
    :cond_16
    invoke-virtual {p0, v4, v5}, Lrx/internal/util/unsafe/SpmcArrayQueue;->e(J)V

    .line 183
    :cond_19
    invoke-virtual {p0, v0, v1}, Lrx/internal/util/unsafe/SpmcArrayQueue;->a(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lrx/internal/util/unsafe/SpmcArrayQueue;->c(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_15
.end method

.method public poll()Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->c()J

    move-result-wide v2

    .line 147
    :cond_5
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->a()J

    move-result-wide v4

    .line 148
    cmp-long v1, v4, v2

    if-ltz v1, :cond_19

    .line 149
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->b()J

    move-result-wide v6

    .line 150
    cmp-long v1, v4, v6

    if-ltz v1, :cond_16

    .line 165
    :goto_15
    return-object v0

    .line 153
    :cond_16
    invoke-virtual {p0, v6, v7}, Lrx/internal/util/unsafe/SpmcArrayQueue;->e(J)V

    .line 156
    :cond_19
    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    invoke-virtual {p0, v4, v5, v6, v7}, Lrx/internal/util/unsafe/SpmcArrayQueue;->b(JJ)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 159
    invoke-virtual {p0, v4, v5}, Lrx/internal/util/unsafe/SpmcArrayQueue;->a(J)J

    move-result-wide v2

    .line 160
    iget-object v4, p0, Lrx/internal/util/unsafe/SpmcArrayQueue;->c:[Ljava/lang/Object;

    .line 162
    invoke-virtual {p0, v4, v2, v3}, Lrx/internal/util/unsafe/SpmcArrayQueue;->a([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 164
    invoke-virtual {p0, v4, v2, v3, v0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->b([Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v0, v1

    .line 165
    goto :goto_15
.end method

.method public size()I
    .registers 7

    .prologue
    .line 194
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->a()J

    move-result-wide v0

    .line 197
    :goto_4
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->b()J

    move-result-wide v4

    .line 198
    invoke-virtual {p0}, Lrx/internal/util/unsafe/SpmcArrayQueue;->a()J

    move-result-wide v2

    .line 199
    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    .line 200
    sub-long v0, v4, v2

    long-to-int v0, v0

    return v0

    :cond_14
    move-wide v0, v2

    .line 202
    goto :goto_4
.end method
