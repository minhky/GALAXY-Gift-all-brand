.class public final Lcom/google/android/gms/internal/zztp$zzc;
.super Lcom/google/android/gms/internal/zzte;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zztp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzte",
        "<",
        "Lcom/google/android/gms/internal/zztp$zzc;",
        ">;"
    }
.end annotation


# instance fields
.field public zzbqt:[B

.field public zzbqu:[[B

.field public zzbqv:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzte;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztp$zzc;->zzHO()Lcom/google/android/gms/internal/zztp$zzc;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_6

    move v0, v1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_5
    :goto_5
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/internal/zztp$zzc;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zztp$zzc;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbqt:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zztp$zzc;->zzbqt:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbqu:[[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zztp$zzc;->zzbqu:[[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzti;->zza([[B[[B)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbqv:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zztp$zzc;->zzbqv:Z

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zztg;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_40

    :cond_32
    iget-object v2, p1, Lcom/google/android/gms/internal/zztp$zzc;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    if-eqz v2, :cond_3e

    iget-object v2, p1, Lcom/google/android/gms/internal/zztp$zzc;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zztg;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3e
    move v0, v1

    goto :goto_5

    :cond_40
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    iget-object v1, p1, Lcom/google/android/gms/internal/zztp$zzc;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zztg;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbqt:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbqu:[[B

    invoke-static {v1}, Lcom/google/android/gms/internal/zzti;->zza([[B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbqv:Z

    if-eqz v0, :cond_3a

    const/16 v0, 0x4cf

    :goto_28
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztg;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3d

    :cond_37
    const/4 v0, 0x0

    :goto_38
    add-int/2addr v0, v1

    return v0

    :cond_3a
    const/16 v0, 0x4d5

    goto :goto_28

    :cond_3d
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztg;->hashCode()I

    move-result v0

    goto :goto_38
.end method

.method public synthetic mergeFrom(Lcom/google/android/gms/internal/zztc;)Lcom/google/android/gms/internal/zztk;
    .registers 3
    .param p1, "x0"    # Lcom/google/android/gms/internal/zztc;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zztp$zzc;->zzJ(Lcom/google/android/gms/internal/zztc;)Lcom/google/android/gms/internal/zztp$zzc;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/android/gms/internal/zztd;)V
    .registers 5
    .param p1, "output"    # Lcom/google/android/gms/internal/zztd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbqt:[B

    sget-object v1, Lcom/google/android/gms/internal/zztn;->zzbqi:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbqt:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zztd;->zza(I[B)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbqu:[[B

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbqu:[[B

    array-length v0, v0

    if-lez v0, :cond_2c

    const/4 v0, 0x0

    :goto_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbqu:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbqu:[[B

    aget-object v1, v1, v0

    if-eqz v1, :cond_29

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zztd;->zza(I[B)V

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_2c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbqv:Z

    if-eqz v0, :cond_36

    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbqv:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zztd;->zzb(IZ)V

    :cond_36
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzte;->writeTo(Lcom/google/android/gms/internal/zztd;)V

    return-void
.end method

.method public zzHO()Lcom/google/android/gms/internal/zztp$zzc;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zztn;->zzbqi:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbqt:[B

    sget-object v0, Lcom/google/android/gms/internal/zztn;->zzbqh:[[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbqu:[[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbqv:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbqb:I

    return-object p0
.end method

.method public zzJ(Lcom/google/android/gms/internal/zztc;)Lcom/google/android/gms/internal/zztp$zzc;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHi()I

    move-result v0

    sparse-switch v0, :sswitch_data_50

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zztp$zzc;->zza(Lcom/google/android/gms/internal/zztc;I)Z

    move-result v0

    if-nez v0, :cond_1

    :sswitch_e
    return-object p0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbqt:[B

    goto :goto_1

    :sswitch_16
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zztn;->zzc(Lcom/google/android/gms/internal/zztc;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbqu:[[B

    if-nez v0, :cond_3c

    move v0, v1

    :goto_21
    add-int/2addr v2, v0

    new-array v2, v2, [[B

    if-eqz v0, :cond_2b

    iget-object v3, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbqu:[[B

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2b
    :goto_2b
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_40

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->readBytes()[B

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHi()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbqu:[[B

    array-length v0, v0

    goto :goto_21

    :cond_40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->readBytes()[B

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbqu:[[B

    goto :goto_1

    :sswitch_49
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHm()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbqv:Z

    goto :goto_1

    :sswitch_data_50
    .sparse-switch
        0x0 -> :sswitch_e
        0xa -> :sswitch_f
        0x12 -> :sswitch_16
        0x18 -> :sswitch_49
    .end sparse-switch
.end method

.method protected zzz()I
    .registers 6

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzte;->zzz()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbqt:[B

    sget-object v3, Lcom/google/android/gms/internal/zztn;->zzbqi:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbqt:[B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zztd;->zzb(I[B)I

    move-result v2

    add-int/2addr v0, v2

    :cond_17
    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbqu:[[B

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbqu:[[B

    array-length v2, v2

    if-lez v2, :cond_3b

    move v2, v1

    move v3, v1

    :goto_22
    iget-object v4, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbqu:[[B

    array-length v4, v4

    if-ge v1, v4, :cond_37

    iget-object v4, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbqu:[[B

    aget-object v4, v4, v1

    if-eqz v4, :cond_34

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/zztd;->zzF([B)I

    move-result v4

    add-int/2addr v2, v4

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_37
    add-int/2addr v0, v2

    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    :cond_3b
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbqv:Z

    if-eqz v1, :cond_47

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zztp$zzc;->zzbqv:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zztd;->zzc(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_47
    return v0
.end method
