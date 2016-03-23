.class Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;
.super Ljava/lang/Object;
.source "CacheValidityPolicy.java"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Immutable;
.end annotation


# static fields
.field public static final MAX_AGE:J = 0x80000000L


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method private mayReturnStaleIfError([Lcz/msebera/android/httpclient/Header;J)Z
    .registers 16
    .param p1, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p2, "stalenessSecs"    # J

    .prologue
    const/4 v5, 0x0

    .line 155
    const/4 v2, 0x0

    .line 156
    .local v2, "result":Z
    array-length v7, p1

    move v6, v5

    :goto_4
    if-ge v6, v7, :cond_35

    aget-object v1, p1, v6

    .line 157
    .local v1, "h":Lcz/msebera/android/httpclient/Header;
    invoke-interface {v1}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v8

    array-length v9, v8

    move v4, v5

    :goto_e
    if-ge v4, v9, :cond_2d

    aget-object v0, v8, v4

    .line 158
    .local v0, "elt":Lcz/msebera/android/httpclient/HeaderElement;
    const-string/jumbo v10, "stale-if-error"

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_32

    .line 160
    :try_start_1f
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_26} :catch_31

    move-result v3

    .line 161
    .local v3, "staleIfErrorSecs":I
    int-to-long v10, v3

    cmp-long v10, p2, v10

    if-gtz v10, :cond_32

    .line 162
    const/4 v2, 0x1

    .line 156
    .end local v0    # "elt":Lcz/msebera/android/httpclient/HeaderElement;
    .end local v3    # "staleIfErrorSecs":I
    :cond_2d
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_4

    .line 165
    .restart local v0    # "elt":Lcz/msebera/android/httpclient/HeaderElement;
    :catch_31
    move-exception v10

    .line 157
    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 171
    .end local v0    # "elt":Lcz/msebera/android/httpclient/HeaderElement;
    .end local v1    # "h":Lcz/msebera/android/httpclient/Header;
    :cond_35
    return v2
.end method


# virtual methods
.method protected contentLengthHeaderMatchesActualLength(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .registers 6
    .param p1, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->hasContentLengthHeader(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getContentLengthValue(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide v0

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getResource()Lcz/msebera/android/httpclient/client/cache/Resource;

    move-result-object v2

    invoke-interface {v2}, Lcz/msebera/android/httpclient/client/cache/Resource;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method protected getAgeValue(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J
    .registers 14
    .param p1, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .prologue
    .line 233
    const-wide/16 v0, 0x0

    .line 234
    .local v0, "ageValue":J
    const-string/jumbo v6, "Age"

    invoke-virtual {p1, v6}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v8, :cond_31

    aget-object v2, v7, v6

    .line 237
    .local v2, "hdr":Lcz/msebera/android/httpclient/Header;
    :try_start_f
    invoke-interface {v2}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_16} :catch_2a

    move-result-wide v4

    .line 238
    .local v4, "hdrAge":J
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-gez v9, :cond_22

    .line 239
    const-wide v4, 0x80000000L

    .line 244
    :cond_22
    :goto_22
    cmp-long v9, v4, v0

    if-lez v9, :cond_27

    move-wide v0, v4

    .line 234
    :cond_27
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 241
    .end local v4    # "hdrAge":J
    :catch_2a
    move-exception v3

    .line 242
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    const-wide v4, 0x80000000L

    .restart local v4    # "hdrAge":J
    goto :goto_22

    .line 246
    .end local v2    # "hdr":Lcz/msebera/android/httpclient/Header;
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    .end local v4    # "hdrAge":J
    :cond_31
    return-wide v0
.end method

.method protected getApparentAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J
    .registers 12
    .param p1, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .prologue
    const-wide/16 v4, 0x0

    .line 221
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 222
    .local v0, "dateValue":Ljava/util/Date;
    if-nez v0, :cond_e

    .line 223
    const-wide v4, 0x80000000L

    .line 229
    :cond_d
    :goto_d
    return-wide v4

    .line 225
    :cond_e
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getResponseDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 226
    .local v2, "diff":J
    cmp-long v1, v2, v4

    if-ltz v1, :cond_d

    .line 229
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    goto :goto_d
.end method

.method protected getContentLengthValue(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J
    .registers 7
    .param p1, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .prologue
    const-wide/16 v2, -0x1

    .line 193
    const-string/jumbo v4, "Content-Length"

    invoke-virtual {p1, v4}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 194
    .local v0, "cl":Lcz/msebera/android/httpclient/Header;
    if-nez v0, :cond_c

    .line 201
    :goto_b
    return-wide v2

    .line 199
    :cond_c
    :try_start_c
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_13} :catch_15

    move-result-wide v2

    goto :goto_b

    .line 200
    :catch_15
    move-exception v1

    .line 201
    .local v1, "ex":Ljava/lang/NumberFormatException;
    goto :goto_b
.end method

.method protected getCorrectedInitialAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J
    .registers 6
    .param p1, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getCorrectedReceivedAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getResponseDelaySecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected getCorrectedReceivedAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J
    .registers 7
    .param p1, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getApparentAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide v2

    .line 251
    .local v2, "apparentAge":J
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getAgeValue(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide v0

    .line 252
    .local v0, "ageValue":J
    cmp-long v4, v2, v0

    if-lez v4, :cond_d

    .end local v2    # "apparentAge":J
    :goto_c
    return-wide v2

    .restart local v2    # "apparentAge":J
    :cond_d
    move-wide v2, v0

    goto :goto_c
.end method

.method public getCurrentAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J
    .registers 7
    .param p1, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .param p2, "now"    # Ljava/util/Date;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getCorrectedInitialAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getResidentTimeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected getDateValue(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Ljava/util/Date;
    .registers 3
    .param p1, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 181
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method protected getExpirationDate(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Ljava/util/Date;
    .registers 4
    .param p1, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .prologue
    .line 291
    const-string/jumbo v1, "Expires"

    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 292
    .local v0, "expiresHeader":Lcz/msebera/android/httpclient/Header;
    if-nez v0, :cond_b

    .line 293
    const/4 v1, 0x0

    .line 295
    :goto_a
    return-object v1

    :cond_b
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    goto :goto_a
.end method

.method public getFreshnessLifetimeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J
    .registers 12
    .param p1, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .prologue
    const-wide/16 v6, 0x0

    .line 57
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getMaxAge(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide v4

    .line 58
    .local v4, "maxage":J
    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-lez v8, :cond_d

    .line 72
    .end local v4    # "maxage":J
    :goto_c
    return-wide v4

    .line 62
    .restart local v4    # "maxage":J
    :cond_d
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 63
    .local v0, "dateValue":Ljava/util/Date;
    if-nez v0, :cond_15

    move-wide v4, v6

    .line 64
    goto :goto_c

    .line 67
    :cond_15
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getExpirationDate(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Ljava/util/Date;

    move-result-object v1

    .line 68
    .local v1, "expiry":Ljava/util/Date;
    if-nez v1, :cond_1d

    move-wide v4, v6

    .line 69
    goto :goto_c

    .line 71
    :cond_1d
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 72
    .local v2, "diff":J
    const-wide/16 v6, 0x3e8

    div-long v4, v2, v6

    goto :goto_c
.end method

.method public getHeuristicFreshnessLifetimeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;FJ)J
    .registers 16
    .param p1, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .param p2, "coefficient"    # F
    .param p3, "defaultLifetime"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 99
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 100
    .local v0, "dateValue":Ljava/util/Date;
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getLastModifiedValue(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Ljava/util/Date;

    move-result-object v1

    .line 102
    .local v1, "lastModifiedValue":Ljava/util/Date;
    if-eqz v0, :cond_1d

    if-eqz v1, :cond_1d

    .line 103
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 104
    .local v2, "diff":J
    cmp-long v6, v2, v4

    if-gez v6, :cond_1e

    move-wide p3, v4

    .line 110
    .end local v2    # "diff":J
    .end local p3    # "defaultLifetime":J
    :cond_1d
    :goto_1d
    return-wide p3

    .line 107
    .restart local v2    # "diff":J
    .restart local p3    # "defaultLifetime":J
    :cond_1e
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    long-to-float v4, v4

    mul-float/2addr v4, p2

    float-to-long p3, v4

    goto :goto_1d
.end method

.method protected getLastModifiedValue(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Ljava/util/Date;
    .registers 4
    .param p1, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .prologue
    .line 185
    const-string/jumbo v1, "Last-Modified"

    invoke-virtual {p1, v1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 186
    .local v0, "dateHdr":Lcz/msebera/android/httpclient/Header;
    if-nez v0, :cond_b

    .line 187
    const/4 v1, 0x0

    .line 189
    :goto_a
    return-object v1

    :cond_b
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    goto :goto_a
.end method

.method protected getMaxAge(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J
    .registers 20
    .param p1, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .prologue
    .line 270
    const-wide/16 v6, -0x1

    .line 271
    .local v6, "maxage":J
    const-string/jumbo v9, "Cache-Control"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v11

    array-length v12, v11

    const/4 v9, 0x0

    move v10, v9

    :goto_e
    if-ge v10, v12, :cond_54

    aget-object v5, v11, v10

    .line 272
    .local v5, "hdr":Lcz/msebera/android/httpclient/Header;
    invoke-interface {v5}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v13

    array-length v14, v13

    const/4 v9, 0x0

    :goto_18
    if-ge v9, v14, :cond_50

    aget-object v4, v13, v9

    .line 273
    .local v4, "elt":Lcz/msebera/android/httpclient/HeaderElement;
    const-string/jumbo v15, "max-age"

    invoke-interface {v4}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_36

    const-string/jumbo v15, "s-maxage"

    .line 274
    invoke-interface {v4}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_49

    .line 276
    :cond_36
    :try_start_36
    invoke-interface {v4}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_3d} :catch_4c

    move-result-wide v2

    .line 277
    .local v2, "currMaxAge":J
    const-wide/16 v16, -0x1

    cmp-long v15, v6, v16

    if-eqz v15, :cond_48

    cmp-long v15, v2, v6

    if-gez v15, :cond_49

    .line 278
    :cond_48
    move-wide v6, v2

    .line 272
    .end local v2    # "currMaxAge":J
    :cond_49
    :goto_49
    add-int/lit8 v9, v9, 0x1

    goto :goto_18

    .line 280
    :catch_4c
    move-exception v8

    .line 282
    .local v8, "nfe":Ljava/lang/NumberFormatException;
    const-wide/16 v6, 0x0

    goto :goto_49

    .line 271
    .end local v4    # "elt":Lcz/msebera/android/httpclient/HeaderElement;
    .end local v8    # "nfe":Ljava/lang/NumberFormatException;
    :cond_50
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_e

    .line 287
    .end local v5    # "hdr":Lcz/msebera/android/httpclient/Header;
    :cond_54
    return-wide v6
.end method

.method protected getResidentTimeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J
    .registers 9
    .param p1, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .param p2, "now"    # Ljava/util/Date;

    .prologue
    .line 265
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getResponseDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 266
    .local v0, "diff":J
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    return-wide v2
.end method

.method protected getResponseDelaySecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J
    .registers 8
    .param p1, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .prologue
    .line 256
    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getResponseDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getRequestDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 257
    .local v0, "diff":J
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    return-wide v2
.end method

.method public getStalenessSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J
    .registers 9
    .param p1, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .param p2, "now"    # Ljava/util/Date;

    .prologue
    .line 311
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v0

    .line 312
    .local v0, "age":J
    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getFreshnessLifetimeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide v2

    .line 313
    .local v2, "freshness":J
    cmp-long v4, v0, v2

    if-gtz v4, :cond_f

    .line 314
    const-wide/16 v4, 0x0

    .line 316
    :goto_e
    return-wide v4

    :cond_f
    sub-long v4, v0, v2

    goto :goto_e
.end method

.method public hasCacheControlDirective(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/lang/String;)Z
    .registers 13
    .param p1, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .param p2, "directive"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 300
    const-string/jumbo v3, "Cache-Control"

    invoke-virtual {p1, v3}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v5

    array-length v6, v5

    move v4, v2

    :goto_a
    if-ge v4, v6, :cond_23

    aget-object v1, v5, v4

    .line 301
    .local v1, "h":Lcz/msebera/android/httpclient/Header;
    invoke-interface {v1}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v7

    array-length v8, v7

    move v3, v2

    :goto_14
    if-ge v3, v8, :cond_27

    aget-object v0, v7, v3

    .line 302
    .local v0, "elt":Lcz/msebera/android/httpclient/HeaderElement;
    invoke-interface {v0}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_24

    .line 303
    const/4 v2, 0x1

    .line 307
    .end local v0    # "elt":Lcz/msebera/android/httpclient/HeaderElement;
    .end local v1    # "h":Lcz/msebera/android/httpclient/Header;
    :cond_23
    return v2

    .line 301
    .restart local v0    # "elt":Lcz/msebera/android/httpclient/HeaderElement;
    .restart local v1    # "h":Lcz/msebera/android/httpclient/Header;
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 300
    .end local v0    # "elt":Lcz/msebera/android/httpclient/HeaderElement;
    :cond_27
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_a
.end method

.method protected hasContentLengthHeader(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .registers 3
    .param p1, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .prologue
    .line 206
    const-string/jumbo v0, "Content-Length"

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isResponseFresh(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .registers 7
    .param p1, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .param p2, "now"    # Ljava/util/Date;

    .prologue
    .line 76
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getFreshnessLifetimeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isResponseHeuristicallyFresh(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;FJ)Z
    .registers 10
    .param p1, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .param p2, "now"    # Ljava/util/Date;
    .param p3, "coefficient"    # F
    .param p4, "defaultLifetime"    # J

    .prologue
    .line 94
    invoke-virtual {p0, p1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v0

    invoke-virtual {p0, p1, p3, p4, p5}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getHeuristicFreshnessLifetimeSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;FJ)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isRevalidatable(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .registers 3
    .param p1, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .prologue
    .line 114
    const-string/jumbo v0, "ETag"

    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "Last-Modified"

    .line 115
    invoke-virtual {p1, v0}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public mayReturnStaleIfError(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .registers 7
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p2, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .param p3, "now"    # Ljava/util/Date;

    .prologue
    .line 147
    invoke-virtual {p0, p2, p3}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getStalenessSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J

    move-result-wide v0

    .line 148
    .local v0, "stalenessSecs":J
    const-string/jumbo v2, "Cache-Control"

    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->mayReturnStaleIfError([Lcz/msebera/android/httpclient/Header;J)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string/jumbo v2, "Cache-Control"

    .line 150
    invoke-virtual {p2, v2}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->mayReturnStaleIfError([Lcz/msebera/android/httpclient/Header;J)Z

    move-result v2

    if-eqz v2, :cond_20

    :cond_1e
    const/4 v2, 0x1

    :goto_1f
    return v2

    :cond_20
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method public mayReturnStaleWhileRevalidating(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
    .registers 17
    .param p1, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;
    .param p2, "now"    # Ljava/util/Date;

    .prologue
    .line 127
    const-string/jumbo v3, "Cache-Control"

    invoke-virtual {p1, v3}, Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v5

    array-length v6, v5

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v6, :cond_40

    aget-object v2, v5, v4

    .line 128
    .local v2, "h":Lcz/msebera/android/httpclient/Header;
    invoke-interface {v2}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v7

    array-length v8, v7

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v8, :cond_3c

    aget-object v1, v7, v3

    .line 129
    .local v1, "elt":Lcz/msebera/android/httpclient/HeaderElement;
    const-string/jumbo v9, "stale-while-revalidate"

    invoke-interface {v1}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_39

    .line 131
    :try_start_25
    invoke-interface {v1}, Lcz/msebera/android/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 132
    .local v0, "allowedStalenessLifetime":I
    invoke-virtual/range {p0 .. p2}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->getStalenessSecs(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/util/Date;)J
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_30} :catch_38

    move-result-wide v10

    int-to-long v12, v0

    cmp-long v9, v10, v12

    if-gtz v9, :cond_39

    .line 133
    const/4 v3, 0x1

    .line 142
    .end local v0    # "allowedStalenessLifetime":I
    .end local v1    # "elt":Lcz/msebera/android/httpclient/HeaderElement;
    .end local v2    # "h":Lcz/msebera/android/httpclient/Header;
    :goto_37
    return v3

    .line 135
    .restart local v1    # "elt":Lcz/msebera/android/httpclient/HeaderElement;
    .restart local v2    # "h":Lcz/msebera/android/httpclient/Header;
    :catch_38
    move-exception v9

    .line 128
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 127
    .end local v1    # "elt":Lcz/msebera/android/httpclient/HeaderElement;
    :cond_3c
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_a

    .line 142
    .end local v2    # "h":Lcz/msebera/android/httpclient/Header;
    :cond_40
    const/4 v3, 0x0

    goto :goto_37
.end method

.method public mustRevalidate(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .registers 3
    .param p1, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .prologue
    .line 119
    const-string/jumbo v0, "must-revalidate"

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->hasCacheControlDirective(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public proxyRevalidate(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;)Z
    .registers 3
    .param p1, "entry"    # Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;

    .prologue
    .line 123
    const-string/jumbo v0, "proxy-revalidate"

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/CacheValidityPolicy;->hasCacheControlDirective(Lcz/msebera/android/httpclient/client/cache/HttpCacheEntry;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
