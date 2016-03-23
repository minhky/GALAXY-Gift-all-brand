.class public final Lcom/google/android/gms/internal/zzqi;
.super Lcom/google/android/gms/measurement/zze;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/measurement/zze",
        "<",
        "Lcom/google/android/gms/internal/zzqi;",
        ">;"
    }
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private zzaMP:Ljava/lang/String;

.field private zzaRH:Ljava/lang/String;

.field private zzaRI:Ljava/lang/String;

.field private zzaRJ:Ljava/lang/String;

.field private zzaRK:Ljava/lang/String;

.field private zzaRL:Ljava/lang/String;

.field private zzaRM:Ljava/lang/String;

.field private zzxX:Ljava/lang/String;

.field private zzxi:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/zze;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->zzxi:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->zzxX:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->zzaMP:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/internal/zzqi;->mName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqi;->mName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "source"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqi;->zzaMP:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "medium"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqi;->zzaRH:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "keyword"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqi;->zzaRI:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "content"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqi;->zzxi:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqi;->zzxX:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "adNetworkId"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqi;->zzaRJ:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "gclid"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqi;->zzaRK:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "dclid"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqi;->zzaRL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "aclid"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqi;->zzaRM:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqi;->zzE(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzqi;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqi;->setName(Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->zzaMP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->zzaMP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqi;->zzee(Ljava/lang/String;)V

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->zzaRH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->zzaRH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqi;->zzef(Ljava/lang/String;)V

    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->zzaRI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->zzaRI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqi;->zzeg(Ljava/lang/String;)V

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->zzxi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->zzxi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqi;->zzeh(Ljava/lang/String;)V

    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->zzxX:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->zzxX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqi;->zzei(Ljava/lang/String;)V

    :cond_4e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->zzaRJ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->zzaRJ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqi;->zzej(Ljava/lang/String;)V

    :cond_5b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->zzaRK:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->zzaRK:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqi;->zzek(Ljava/lang/String;)V

    :cond_68
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->zzaRL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_75

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->zzaRL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqi;->zzel(Ljava/lang/String;)V

    :cond_75
    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->zzaRM:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_82

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->zzaRM:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzqi;->zzem(Ljava/lang/String;)V

    :cond_82
    return-void
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/measurement/zze;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/zzqi;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzqi;->zza(Lcom/google/android/gms/internal/zzqi;)V

    return-void
.end method

.method public zzee(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqi;->zzaMP:Ljava/lang/String;

    return-void
.end method

.method public zzef(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqi;->zzaRH:Ljava/lang/String;

    return-void
.end method

.method public zzeg(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqi;->zzaRI:Ljava/lang/String;

    return-void
.end method

.method public zzeh(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqi;->zzxi:Ljava/lang/String;

    return-void
.end method

.method public zzei(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqi;->zzxX:Ljava/lang/String;

    return-void
.end method

.method public zzej(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqi;->zzaRJ:Ljava/lang/String;

    return-void
.end method

.method public zzek(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqi;->zzaRK:Ljava/lang/String;

    return-void
.end method

.method public zzel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqi;->zzaRL:Ljava/lang/String;

    return-void
.end method

.method public zzem(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqi;->zzaRM:Ljava/lang/String;

    return-void
.end method

.method public zzzU()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->zzaRH:Ljava/lang/String;

    return-object v0
.end method

.method public zzzV()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->zzaRI:Ljava/lang/String;

    return-object v0
.end method

.method public zzzW()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->zzaRJ:Ljava/lang/String;

    return-object v0
.end method

.method public zzzX()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->zzaRK:Ljava/lang/String;

    return-object v0
.end method

.method public zzzY()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->zzaRL:Ljava/lang/String;

    return-object v0
.end method

.method public zzzZ()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqi;->zzaRM:Ljava/lang/String;

    return-object v0
.end method
