.class final Lokio/Segment;
.super Ljava/lang/Object;
.source "Segment.java"


# instance fields
.field final a:[B

.field b:I

.field c:I

.field d:Z

.field e:Z

.field f:Lokio/Segment;

.field g:Lokio/Segment;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lokio/Segment;->a:[B

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/Segment;->e:Z

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokio/Segment;->d:Z

    .line 64
    return-void
.end method

.method constructor <init>(Lokio/Segment;)V
    .registers 5

    .prologue
    .line 67
    iget-object v0, p1, Lokio/Segment;->a:[B

    iget v1, p1, Lokio/Segment;->b:I

    iget v2, p1, Lokio/Segment;->c:I

    invoke-direct {p0, v0, v1, v2}, Lokio/Segment;-><init>([BII)V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p1, Lokio/Segment;->d:Z

    .line 69
    return-void
.end method

.method constructor <init>([BII)V
    .registers 5

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lokio/Segment;->a:[B

    .line 73
    iput p2, p0, Lokio/Segment;->b:I

    .line 74
    iput p3, p0, Lokio/Segment;->c:I

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokio/Segment;->e:Z

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/Segment;->d:Z

    .line 77
    return-void
.end method


# virtual methods
.method public a()Lokio/Segment;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lokio/Segment;->f:Lokio/Segment;

    if-eq v0, p0, :cond_18

    iget-object v0, p0, Lokio/Segment;->f:Lokio/Segment;

    .line 85
    :goto_7
    iget-object v2, p0, Lokio/Segment;->g:Lokio/Segment;

    iget-object v3, p0, Lokio/Segment;->f:Lokio/Segment;

    iput-object v3, v2, Lokio/Segment;->f:Lokio/Segment;

    .line 86
    iget-object v2, p0, Lokio/Segment;->f:Lokio/Segment;

    iget-object v3, p0, Lokio/Segment;->g:Lokio/Segment;

    iput-object v3, v2, Lokio/Segment;->g:Lokio/Segment;

    .line 87
    iput-object v1, p0, Lokio/Segment;->f:Lokio/Segment;

    .line 88
    iput-object v1, p0, Lokio/Segment;->g:Lokio/Segment;

    .line 89
    return-object v0

    :cond_18
    move-object v0, v1

    .line 84
    goto :goto_7
.end method

.method public a(I)Lokio/Segment;
    .registers 7

    .prologue
    .line 113
    if-lez p1, :cond_9

    iget v0, p0, Lokio/Segment;->c:I

    iget v1, p0, Lokio/Segment;->b:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_f

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 121
    :cond_f
    const/16 v0, 0x400

    if-lt p1, v0, :cond_28

    .line 122
    new-instance v0, Lokio/Segment;

    invoke-direct {v0, p0}, Lokio/Segment;-><init>(Lokio/Segment;)V

    .line 128
    :goto_18
    iget v1, v0, Lokio/Segment;->b:I

    add-int/2addr v1, p1

    iput v1, v0, Lokio/Segment;->c:I

    .line 129
    iget v1, p0, Lokio/Segment;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lokio/Segment;->b:I

    .line 130
    iget-object v1, p0, Lokio/Segment;->g:Lokio/Segment;

    invoke-virtual {v1, v0}, Lokio/Segment;->a(Lokio/Segment;)Lokio/Segment;

    .line 131
    return-object v0

    .line 124
    :cond_28
    invoke-static {}, Lokio/SegmentPool;->a()Lokio/Segment;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lokio/Segment;->a:[B

    iget v2, p0, Lokio/Segment;->b:I

    iget-object v3, v0, Lokio/Segment;->a:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_18
.end method

.method public a(Lokio/Segment;)Lokio/Segment;
    .registers 3

    .prologue
    .line 97
    iput-object p0, p1, Lokio/Segment;->g:Lokio/Segment;

    .line 98
    iget-object v0, p0, Lokio/Segment;->f:Lokio/Segment;

    iput-object v0, p1, Lokio/Segment;->f:Lokio/Segment;

    .line 99
    iget-object v0, p0, Lokio/Segment;->f:Lokio/Segment;

    iput-object p1, v0, Lokio/Segment;->g:Lokio/Segment;

    .line 100
    iput-object p1, p0, Lokio/Segment;->f:Lokio/Segment;

    .line 101
    return-object p1
.end method

.method public a(Lokio/Segment;I)V
    .registers 9

    .prologue
    const/16 v2, 0x2000

    const/4 v5, 0x0

    .line 151
    iget-boolean v0, p1, Lokio/Segment;->e:Z

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 152
    :cond_d
    iget v0, p1, Lokio/Segment;->c:I

    add-int/2addr v0, p2

    if-le v0, v2, :cond_41

    .line 154
    iget-boolean v0, p1, Lokio/Segment;->d:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 155
    :cond_1c
    iget v0, p1, Lokio/Segment;->c:I

    add-int/2addr v0, p2

    iget v1, p1, Lokio/Segment;->b:I

    sub-int/2addr v0, v1

    if-le v0, v2, :cond_2a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 156
    :cond_2a
    iget-object v0, p1, Lokio/Segment;->a:[B

    iget v1, p1, Lokio/Segment;->b:I

    iget-object v2, p1, Lokio/Segment;->a:[B

    iget v3, p1, Lokio/Segment;->c:I

    iget v4, p1, Lokio/Segment;->b:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    iget v0, p1, Lokio/Segment;->c:I

    iget v1, p1, Lokio/Segment;->b:I

    sub-int/2addr v0, v1

    iput v0, p1, Lokio/Segment;->c:I

    .line 158
    iput v5, p1, Lokio/Segment;->b:I

    .line 161
    :cond_41
    iget-object v0, p0, Lokio/Segment;->a:[B

    iget v1, p0, Lokio/Segment;->b:I

    iget-object v2, p1, Lokio/Segment;->a:[B

    iget v3, p1, Lokio/Segment;->c:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iget v0, p1, Lokio/Segment;->c:I

    add-int/2addr v0, p2

    iput v0, p1, Lokio/Segment;->c:I

    .line 163
    iget v0, p0, Lokio/Segment;->b:I

    add-int/2addr v0, p2

    iput v0, p0, Lokio/Segment;->b:I

    .line 164
    return-void
.end method

.method public b()V
    .registers 4

    .prologue
    .line 139
    iget-object v0, p0, Lokio/Segment;->g:Lokio/Segment;

    if-ne v0, p0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 140
    :cond_a
    iget-object v0, p0, Lokio/Segment;->g:Lokio/Segment;

    iget-boolean v0, v0, Lokio/Segment;->e:Z

    if-nez v0, :cond_11

    .line 147
    :cond_10
    :goto_10
    return-void

    .line 141
    :cond_11
    iget v0, p0, Lokio/Segment;->c:I

    iget v1, p0, Lokio/Segment;->b:I

    sub-int v1, v0, v1

    .line 142
    iget-object v0, p0, Lokio/Segment;->g:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->c:I

    rsub-int v2, v0, 0x2000

    iget-object v0, p0, Lokio/Segment;->g:Lokio/Segment;

    iget-boolean v0, v0, Lokio/Segment;->d:Z

    if-eqz v0, :cond_33

    const/4 v0, 0x0

    :goto_24
    add-int/2addr v0, v2

    .line 143
    if-gt v1, v0, :cond_10

    .line 144
    iget-object v0, p0, Lokio/Segment;->g:Lokio/Segment;

    invoke-virtual {p0, v0, v1}, Lokio/Segment;->a(Lokio/Segment;I)V

    .line 145
    invoke-virtual {p0}, Lokio/Segment;->a()Lokio/Segment;

    .line 146
    invoke-static {p0}, Lokio/SegmentPool;->a(Lokio/Segment;)V

    goto :goto_10

    .line 142
    :cond_33
    iget-object v0, p0, Lokio/Segment;->g:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->b:I

    goto :goto_24
.end method
