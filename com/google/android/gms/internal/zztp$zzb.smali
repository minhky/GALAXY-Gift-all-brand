.class public final Lcom/google/android/gms/internal/zztp$zzb;
.super Lcom/google/android/gms/internal/zzte;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zztp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzte",
        "<",
        "Lcom/google/android/gms/internal/zztp$zzb;",
        ">;"
    }
.end annotation


# instance fields
.field public version:Ljava/lang/String;

.field public zzbqr:I

.field public zzbqs:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzte;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztp$zzb;->zzHN()Lcom/google/android/gms/internal/zztp$zzb;

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
    instance-of v2, p1, Lcom/google/android/gms/internal/zztp$zzb;

    if-eqz v2, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/zztp$zzb;

    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p0, Lcom/google/android/gms/internal/zztp$zzb;->zzbqr:I

    iget v3, p1, Lcom/google/android/gms/internal/zztp$zzb;->zzbqr:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzb;->zzbqs:Ljava/lang/String;

    if-nez v2, :cond_3c

    iget-object v2, p1, Lcom/google/android/gms/internal/zztp$zzb;->zzbqs:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_1a
    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzb;->version:Ljava/lang/String;

    if-nez v2, :cond_47

    iget-object v2, p1, Lcom/google/android/gms/internal/zztp$zzb;->version:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_22
    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzb;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzb;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zztg;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_52

    :cond_2e
    iget-object v2, p1, Lcom/google/android/gms/internal/zztp$zzb;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    if-eqz v2, :cond_3a

    iget-object v2, p1, Lcom/google/android/gms/internal/zztp$zzb;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zztg;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3a
    move v0, v1

    goto :goto_5

    :cond_3c
    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzb;->zzbqs:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zztp$zzb;->zzbqs:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_5

    :cond_47
    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzb;->version:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zztp$zzb;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_5

    :cond_52
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzb;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    iget-object v1, p1, Lcom/google/android/gms/internal/zztp$zzb;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zztg;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/zztp$zzb;->zzbqr:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzb;->zzbqs:Ljava/lang/String;

    if-nez v0, :cond_34

    move v0, v1

    :goto_1b
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzb;->version:Ljava/lang/String;

    if-nez v0, :cond_3b

    move v0, v1

    :goto_23
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzb;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzb;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zztg;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_42

    :cond_32
    :goto_32
    add-int/2addr v0, v1

    return v0

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzb;->zzbqs:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1b

    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzb;->version:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_23

    :cond_42
    iget-object v1, p0, Lcom/google/android/gms/internal/zztp$zzb;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zztg;->hashCode()I

    move-result v1

    goto :goto_32
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zztp$zzb;->zzI(Lcom/google/android/gms/internal/zztc;)Lcom/google/android/gms/internal/zztp$zzb;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/android/gms/internal/zztd;)V
    .registers 4
    .param p1, "output"    # Lcom/google/android/gms/internal/zztd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/zztp$zzb;->zzbqr:I

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zztp$zzb;->zzbqr:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zztd;->zzG(II)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzb;->zzbqs:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zztp$zzb;->zzbqs:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zztd;->zzb(ILjava/lang/String;)V

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/zztp$zzb;->version:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zztp$zzb;->version:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zztd;->zzb(ILjava/lang/String;)V

    :cond_2c
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzte;->writeTo(Lcom/google/android/gms/internal/zztd;)V

    return-void
.end method

.method public zzHN()Lcom/google/android/gms/internal/zztp$zzb;
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zztp$zzb;->zzbqr:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zztp$zzb;->zzbqs:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zztp$zzb;->version:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zztp$zzb;->zzbpQ:Lcom/google/android/gms/internal/zztg;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zztp$zzb;->zzbqb:I

    return-object p0
.end method

.method public zzI(Lcom/google/android/gms/internal/zztc;)Lcom/google/android/gms/internal/zztp$zzb;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHi()I

    move-result v0

    sparse-switch v0, :sswitch_data_28

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zztp$zzb;->zza(Lcom/google/android/gms/internal/zztc;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->zzHl()I

    move-result v0

    packed-switch v0, :pswitch_data_3a

    goto :goto_0

    :pswitch_16
    iput v0, p0, Lcom/google/android/gms/internal/zztp$zzb;->zzbqr:I

    goto :goto_0

    :sswitch_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zztp$zzb;->zzbqs:Ljava/lang/String;

    goto :goto_0

    :sswitch_20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zztc;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zztp$zzb;->version:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_19
        0x1a -> :sswitch_20
    .end sparse-switch

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method protected zzz()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzte;->zzz()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zztp$zzb;->zzbqr:I

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/zztp$zzb;->zzbqr:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zztd;->zzI(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zztp$zzb;->zzbqs:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzb;->zzbqs:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zztd;->zzp(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_23
    iget-object v1, p0, Lcom/google/android/gms/internal/zztp$zzb;->version:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zztp$zzb;->version:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zztd;->zzp(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_36
    return v0
.end method
