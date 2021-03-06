.class Lcom/bumptech/glide/load/engine/DecodeJob;
.super Ljava/lang/Object;
.source "DecodeJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;


# instance fields
.field private final b:Lcom/bumptech/glide/load/engine/EngineKey;

.field private final c:I

.field private final d:I

.field private final e:Lcom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<TA;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/bumptech/glide/provider/DataLoadProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/provider/DataLoadProvider",
            "<TA;TT;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final h:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TT;TZ;>;"
        }
    .end annotation
.end field

.field private final i:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

.field private final j:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private final k:Lcom/bumptech/glide/Priority;

.field private final l:Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

.field private volatile m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/DecodeJob;->a:Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/EngineKey;IILcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/Priority;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/EngineKey;",
            "II",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<TA;>;",
            "Lcom/bumptech/glide/provider/DataLoadProvider",
            "<TA;TT;>;",
            "Lcom/bumptech/glide/load/Transformation",
            "<TT;>;",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TT;TZ;>;",
            "Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            "Lcom/bumptech/glide/Priority;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    sget-object v11, Lcom/bumptech/glide/load/engine/DecodeJob;->a:Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/bumptech/glide/load/engine/DecodeJob;-><init>(Lcom/bumptech/glide/load/engine/EngineKey;IILcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;)V

    .line 53
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/EngineKey;IILcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/EngineKey;",
            "II",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<TA;>;",
            "Lcom/bumptech/glide/provider/DataLoadProvider",
            "<TA;TT;>;",
            "Lcom/bumptech/glide/load/Transformation",
            "<TT;>;",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder",
            "<TT;TZ;>;",
            "Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->b:Lcom/bumptech/glide/load/engine/EngineKey;

    .line 61
    iput p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->c:I

    .line 62
    iput p3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->d:I

    .line 63
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->e:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 64
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->f:Lcom/bumptech/glide/provider/DataLoadProvider;

    .line 65
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->g:Lcom/bumptech/glide/load/Transformation;

    .line 66
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->h:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    .line 67
    iput-object p8, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->i:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    .line 68
    iput-object p9, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->j:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 69
    iput-object p10, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->k:Lcom/bumptech/glide/Priority;

    .line 70
    iput-object p11, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->l:Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->l:Lcom/bumptech/glide/load/engine/DecodeJob$FileOpener;

    return-object v0
.end method

.method private a(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 215
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->i:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->a()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->a(Lcom/bumptech/glide/load/Key;)Ljava/io/File;

    move-result-object v1

    .line 216
    if-nez v1, :cond_e

    .line 228
    :cond_d
    :goto_d
    return-object v0

    .line 222
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->f:Lcom/bumptech/glide/provider/DataLoadProvider;

    invoke-interface {v2}, Lcom/bumptech/glide/provider/DataLoadProvider;->a()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v2

    iget v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->c:I

    iget v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->d:I

    invoke-interface {v2, v1, v3, v4}, Lcom/bumptech/glide/load/ResourceDecoder;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_28

    move-result-object v0

    .line 224
    if-nez v0, :cond_d

    .line 225
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->i:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->a()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->b(Lcom/bumptech/glide/load/Key;)V

    goto :goto_d

    .line 224
    :catchall_28
    move-exception v1

    if-nez v0, :cond_34

    .line 225
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->i:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->a()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->b(Lcom/bumptech/glide/load/Key;)V

    :cond_34
    throw v1
.end method

.method private a(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 138
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->a()J

    move-result-wide v0

    .line 139
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->c(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v2

    .line 140
    const-string/jumbo v3, "DecodeJob"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 141
    const-string/jumbo v3, "Transformed resource from source"

    invoke-direct {p0, v3, v0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Ljava/lang/String;J)V

    .line 144
    :cond_18
    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->b(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 146
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->a()J

    move-result-wide v0

    .line 147
    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->d(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v2

    .line 148
    const-string/jumbo v3, "DecodeJob"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 149
    const-string/jumbo v3, "Transcoded transformed from source"

    invoke-direct {p0, v3, v0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Ljava/lang/String;J)V

    .line 151
    :cond_32
    return-object v2
.end method

.method private a(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->j:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 187
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->b(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 195
    :cond_c
    :goto_c
    return-object v0

    .line 189
    :cond_d
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->a()J

    move-result-wide v2

    .line 190
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->f:Lcom/bumptech/glide/provider/DataLoadProvider;

    invoke-interface {v0}, Lcom/bumptech/glide/provider/DataLoadProvider;->b()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->c:I

    iget v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->d:I

    invoke-interface {v0, p1, v1, v4}, Lcom/bumptech/glide/load/ResourceDecoder;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 191
    const-string/jumbo v1, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 192
    const-string/jumbo v1, "Decoded from source"

    invoke-direct {p0, v1, v2, v3}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Ljava/lang/String;J)V

    goto :goto_c
.end method

.method private a(Ljava/lang/String;J)V
    .registers 8

    .prologue
    .line 251
    const-string/jumbo v0, "DecodeJob"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Lcom/bumptech/glide/util/LogTime;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->b:Lcom/bumptech/glide/load/engine/EngineKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void
.end method

.method private b(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 199
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->a()J

    move-result-wide v0

    .line 200
    new-instance v2, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->f:Lcom/bumptech/glide/provider/DataLoadProvider;

    invoke-interface {v3}, Lcom/bumptech/glide/provider/DataLoadProvider;->c()Lcom/bumptech/glide/load/Encoder;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/Encoder;Ljava/lang/Object;)V

    .line 201
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->i:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    invoke-interface {v3}, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->a()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v3

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->b:Lcom/bumptech/glide/load/engine/EngineKey;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/EngineKey;->a()Lcom/bumptech/glide/load/Key;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->a(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V

    .line 202
    const-string/jumbo v2, "DecodeJob"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 203
    const-string/jumbo v2, "Wrote source to cache"

    invoke-direct {p0, v2, v0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Ljava/lang/String;J)V

    .line 206
    :cond_2e
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->a()J

    move-result-wide v0

    .line 207
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->b:Lcom/bumptech/glide/load/engine/EngineKey;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/EngineKey;->a()Lcom/bumptech/glide/load/Key;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v2

    .line 208
    const-string/jumbo v3, "DecodeJob"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4d

    if-eqz v2, :cond_4d

    .line 209
    const-string/jumbo v3, "Decoded source from cache"

    invoke-direct {p0, v3, v0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Ljava/lang/String;J)V

    .line 211
    :cond_4d
    return-object v2
.end method

.method private b(Lcom/bumptech/glide/load/engine/Resource;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 155
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->j:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->b()Z

    move-result v0

    if-nez v0, :cond_b

    .line 164
    :cond_a
    :goto_a
    return-void

    .line 158
    :cond_b
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->a()J

    move-result-wide v0

    .line 159
    new-instance v2, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->f:Lcom/bumptech/glide/provider/DataLoadProvider;

    invoke-interface {v3}, Lcom/bumptech/glide/provider/DataLoadProvider;->d()Lcom/bumptech/glide/load/ResourceEncoder;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lcom/bumptech/glide/load/engine/DecodeJob$SourceWriter;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/Encoder;Ljava/lang/Object;)V

    .line 160
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->i:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    invoke-interface {v3}, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->a()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v3

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->b:Lcom/bumptech/glide/load/engine/EngineKey;

    invoke-interface {v3, v4, v2}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->a(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V

    .line 161
    const-string/jumbo v2, "DecodeJob"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 162
    const-string/jumbo v2, "Wrote transformed from source to cache"

    invoke-direct {p0, v2, v0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Ljava/lang/String;J)V

    goto :goto_a
.end method

.method private c(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 232
    if-nez p1, :cond_4

    .line 233
    const/4 v0, 0x0

    .line 240
    :cond_3
    :goto_3
    return-object v0

    .line 236
    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->g:Lcom/bumptech/glide/load/Transformation;

    iget v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->c:I

    iget v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->d:I

    invoke-interface {v0, p1, v1, v2}, Lcom/bumptech/glide/load/Transformation;->a(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 237
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 238
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->d()V

    goto :goto_3
.end method

.method private d(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 244
    if-nez p1, :cond_4

    .line 245
    const/4 v0, 0x0

    .line 247
    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->h:Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->a(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    goto :goto_3
.end method

.method private e()Lcom/bumptech/glide/load/engine/Resource;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 167
    .line 169
    :try_start_0
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->a()J

    move-result-wide v0

    .line 170
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->e:Lcom/bumptech/glide/load/data/DataFetcher;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->k:Lcom/bumptech/glide/Priority;

    invoke-interface {v2, v3}, Lcom/bumptech/glide/load/data/DataFetcher;->a(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;

    move-result-object v2

    .line 171
    const-string/jumbo v3, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 172
    const-string/jumbo v3, "Fetched data"

    invoke-direct {p0, v3, v0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Ljava/lang/String;J)V

    .line 174
    :cond_1c
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->m:Z
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_31

    if-eqz v0, :cond_27

    .line 175
    const/4 v0, 0x0

    .line 179
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->e:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v1}, Lcom/bumptech/glide/load/data/DataFetcher;->a()V

    .line 181
    :goto_26
    return-object v0

    .line 177
    :cond_27
    :try_start_27
    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/Resource;
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_31

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->e:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v1}, Lcom/bumptech/glide/load/data/DataFetcher;->a()V

    goto :goto_26

    :catchall_31
    move-exception v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->e:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v1}, Lcom/bumptech/glide/load/data/DataFetcher;->a()V

    throw v0
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/engine/Resource;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 80
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->j:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->b()Z

    move-result v0

    if-nez v0, :cond_b

    .line 81
    const/4 v0, 0x0

    .line 94
    :cond_a
    :goto_a
    return-object v0

    .line 84
    :cond_b
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->a()J

    move-result-wide v0

    .line 85
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->b:Lcom/bumptech/glide/load/engine/EngineKey;

    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v2

    .line 86
    const-string/jumbo v3, "DecodeJob"

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 87
    const-string/jumbo v3, "Decoded transformed from cache"

    invoke-direct {p0, v3, v0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Ljava/lang/String;J)V

    .line 89
    :cond_24
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->a()J

    move-result-wide v4

    .line 90
    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->d(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 91
    const-string/jumbo v1, "DecodeJob"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 92
    const-string/jumbo v1, "Transcoded transformed from cache"

    invoke-direct {p0, v1, v4, v5}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Ljava/lang/String;J)V

    goto :goto_a
.end method

.method public b()Lcom/bumptech/glide/load/engine/Resource;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->j:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a()Z

    move-result v0

    if-nez v0, :cond_a

    .line 105
    const/4 v0, 0x0

    .line 113
    :goto_9
    return-object v0

    .line 108
    :cond_a
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->a()J

    move-result-wide v0

    .line 109
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->b:Lcom/bumptech/glide/load/engine/EngineKey;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/EngineKey;->a()Lcom/bumptech/glide/load/Key;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v2

    .line 110
    const-string/jumbo v3, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 111
    const-string/jumbo v3, "Decoded source from cache"

    invoke-direct {p0, v3, v0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Ljava/lang/String;J)V

    .line 113
    :cond_28
    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    goto :goto_9
.end method

.method public c()Lcom/bumptech/glide/load/engine/Resource;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->e()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 129
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->a(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .registers 2

    .prologue
    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->m:Z

    .line 134
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->e:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/DataFetcher;->c()V

    .line 135
    return-void
.end method
